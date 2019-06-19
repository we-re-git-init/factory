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

employee2.print_info

# employee2.send_report


class Manager
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

  def send_report
    p "going to send that report..."
    # some sort of logic in here
    p "just sent the report"
  end
end


manager = Manager.new(first_name: "Manny", last_name: "Martin", salary: 110000, active: true)

manager.print_info

manager.give_annual_raise

manager.print_info
manager.send_report
