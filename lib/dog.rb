class Dog
  attr_accessor :name, :breed
  attr_reader :id
  
  def self.create_table
    sql = <<~SQL
    SQL
    DB[:conn].execute(sql)
  end
  
  def self.drop_table
    sql = <<~SQL
    SQL
    DB[:conn].execute(sql)
  end
  
  def initialize()
  end
  
end

sql = <<~SQL
    SQL
    DB[:conn].execute(sql)