class Dog
  attr_accessor :name, :breed
  attr_reader :id
  
  def self.create_table
    sql = <<~SQL
      CREATE TABLE IF NOT EXISTS dogs (
        id    INTEGER PRIMARY KEY,
        name  TEXT,
        breed TEXT);
    SQL
    DB[:conn].execute(sql)
  end
  
  def self.drop_table
    sql = <<~SQL
      DROP TABLE IF EXISTS dogs;
    SQL
    DB[:conn].execute(sql)
  end
  
  def self.find_by_name(name)
    sql = <<~SQL
      SELECT * FROM dogs WHERE name = ?;
    SQL
    self.new_from_db( DB[:conn].execute(sql).first )
  end
  
  def self.new_from_db(row)
    Dog.new(row[0], row[1], row[2]).tap{|obj| obj.save}
  end
  
  def initialize(id: = nil, name:, breed:)
    @id    = id
    @name  = name
    @breed = breed
  end
  
  def save
    if self.id
      self.update
    else
      sql = <<~SQL
        INSERT INTO dogs (name, breed) VALUES (?, ?);
      SQL
      DB[:conn].execute(sql, self.name, self.breed)
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM dogs;")[0][0]
    end
  end
  
  def update
    
  end
  
end