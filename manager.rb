class Employee
  attr_reader :first_name, :last_name
  attr_writer :first_name

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


class Manager < Employee
  attr_reader :employees

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    # find all the employees
    @employees.each do |employee|
      employee.give_annual_raise
    end
    # give them all a raise

  end

  def send_report
    p "going to send that report..."
    # some sort of logic in here
    p "just sent the report"
  end
end

manager = Manager.new(first_name: "Manny", last_name: "Martin", salary: 110000, active: true, employees: [employee1, employee2])

# manager.print_info

# manager.give_annual_raise

# manager.print_info


p manager.employees
manager.give_all_raises
p manager.employees

# employee1.print_info
# employee2.print_info


# Create a new file called manager.rb. Paste in the code: https://gist.github.com/peterxjang/628b90b89bd7f61f8cff9319a7f3d59d
# Create a method in the Manager class called give_all_raises that loops through each of the manager’s employees and gives them a raise (using the give_annual_raise method). Demonstrate how it works.
# Create a method in the Manager class called fire_all_employees that loops through each of the manager’s employees and changes their active status to false.
