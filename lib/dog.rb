class Dog
  attr_accessor :
  
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