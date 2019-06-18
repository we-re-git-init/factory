# keep track of employees using ruby somehow

# array
# employee1 = ["Majora", "Carter", 80000, true]

# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."

# employee2 = ["Danilo", "Campos", 100000, false]

# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."


# "Majora Carter makes $80000 per year"

# hash

# employee1 = {
#   "first_name" => "Majora",
#   "last_name" => "Carter",
#   "salary" => 80000,
#   "active" => true
# }

# p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year."

# 'behind the scenes'
# employee2 = {
#   :first_name => "Danilo",
#   :last_name => "Campos",
#   :salary => 100000,
#   :active => false
# }

# employee2 = {
#   first_name: "Danilo",
#   active: false,
#   salary: 100000,
#   last_name: "Campos"
# }


# p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."


# class

class Employee
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end
end

employee1 = Employee.new("Majora", "Carter", 80000, true)

employee1.print_info

employee2 = Employee.new("Danilo", "Campos", 100000, false)

employee2.print_info
