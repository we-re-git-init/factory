# keep track of employees using ruby somehow

# array
# employee1 = ["Majora", "Carter", 80000, true]

# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."

# employee2 = ["Danilo", "Campos", 100000, false]

# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."


# "Majora Carter makes $80000 per year"

# hash

employee1 = {
  "first_name" => "Majora",
  "last_name" => "Carter",
  "salary" => 80000,
  "active" => true
}

p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year."


# class
