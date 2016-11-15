class Employee
  def initialize id, first_name, last_name, position
    @id = id
    @first_name = first_name
    @last_name = last_name
    @position = position
  end

  def id
    @id
  end
  
  def name
    "#{last_name}, #{first_name}"
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def position
    @position
  end
end
