require_relative 'User'

class Student < User
  def add
    super
    puts "Student add 方法"
  end
end