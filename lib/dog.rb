class Dog
  attr_accessor :
  
  def self.create_table
    sql = <<~SQL
    SQL
    DB[:conn].execute(sql)
  end
  
  def self.drop_table
  end
  
  def initialize()
  end
  
end