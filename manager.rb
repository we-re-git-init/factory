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
