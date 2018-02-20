class Dog
  attr_accessor :name, :breed
  attr_reader :id
  
  def self.create_table
    sql = <<~SQL
      CREATE TABLE IF NOT EXISTS dogs;
    SQL
    DB[:conn].execute(sql)
  end
  
  def self.drop_table
    sql = <<~SQL
      DROP TABLE IF EXISTS dogs;
    SQL
    DB[:conn].execute(sql)
  end
  
  def initialize(id:, name:, breed:)
    @id    = id
    @name  = name
    @breed = breed
  end
  
end

sql = <<~SQL
    SQL
    DB[:conn].execute(sql)