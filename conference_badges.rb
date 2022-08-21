require "pry"

# Write your code here.
# array_of_names = ["Jose", "Batboy", "Cassandra"]

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array_of_names)
  array_of_names.collect{|names| badge_maker(names)}
end

def assign_rooms(array_of_names)
  array_of_names.map.with_index do |name, index|
    if index < 7
      "Hello, #{name}! You'll be assigned to room #{index+1}!"
    end
  end
end

def printer(array_of_names)
  batch_badge_creator(array_of_names).each{|name| puts name}
  assign_rooms(array_of_names).each{|room_assignment| puts room_assignment}
end

# binding.pry
