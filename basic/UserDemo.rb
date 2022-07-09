require_relative 'User'
require_relative 'Student'
user = User.new('ZPQ')

user.add
puts user.username

student = Student.new('小明')
student.add