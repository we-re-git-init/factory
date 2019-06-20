class Employee
  attr_reader :first_name, :last_name
  attr_writer :first_name, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 100000, active: false)

# employee2.print_info

employee1 = Employee.new({:last_name => "Carter", :salary => 80000, :active => true, :first_name => "Majora"})


# employee2.send_report


module EmailReportable
  def send_report
    p "going to send that report..."
    # some sort of logic in here
    p "just sent the report"
  end
end


class Manager < Employee
  attr_reader :employees

  include EmailReportable

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    # find all the employees
    employees.each do |employee|
      employee.give_annual_raise
    end
    # give them all a raise
  end

  def fire_all_employees
    employees.each do |employee|
      # p employee.class
      employee.active = false
    end
  end
end

# manager = Manager.new(first_name: "Manny", last_name: "Martin", salary: 110000, active: true, employees: [employee1, employee2])

# manager.print_info

# manager.give_annual_raise

# manager.print_info


# p manager.employees
# manager.fire_all_employees
# p manager.employees

# employee1.print_info
# employee2.print_info


# intern can do everything an employee can do and also can send reports
class Intern < Employee
  include EmailReportable
end

intern = Intern.new(first_name: "Ingrid", last_name: "Wood", salary: 0, active: true)

intern.print_info
intern.send_report
