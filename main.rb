require_relative 'employee.rb'
require_relative 'email_reportable.rb'
require_relative 'manager.rb'
require_relative 'intern'

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 100000, active: false)

employee2.print_info

employee1 = Employee.new({:last_name => "Carter", :salary => 80000, :active => true, :first_name => "Majora"})


manager = Manager.new(first_name: "Manny", last_name: "Martin", salary: 110000, active: true, employees: [employee1, employee2])

manager.print_info

manager.give_annual_raise

manager.print_info


p manager.employees
manager.fire_all_employees
p manager.employees

employee1.print_info
employee2.print_info


intern = Intern.new(first_name: "Ingrid", last_name: "Wood", salary: 0, active: true)

intern.print_info
intern.send_report
