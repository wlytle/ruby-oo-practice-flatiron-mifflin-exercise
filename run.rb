require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


man1 = Manager.new("susan", "accounting", 91)
man2 = Manager.new("philis", "sales", 33)
man3 = Manager.new("judith", "HR", 40)

emp1 = Employee.new("pam", 1000, man2)
emp2 = Employee.new("dqight", 800, man2)
emp3 = Employee.new("oscar", 2000, man1)
emp4 = Employee.new("Toby", 10000, man3)


binding.pry
puts "done"
