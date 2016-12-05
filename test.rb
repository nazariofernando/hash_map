require './hash_map.rb'

#creating an instance of HashMap with size of 3 pairs
hash1 = HashMap.new(4)

#creating three pairs of keys and values
puts "Should return true: "
pair1 = hash1.set("Hello", 1)
puts pair1
pair2 = hash1.set("World", 2)
puts "Should return true: "
pair3 = hash1.set("Fernando", 3)
puts pair2
puts "Should return true: "
pair4 = hash1.set("Nazario", 4)
puts pair3
puts "Should return false: "
pair5 = hash1.set("bla", 5)
puts pair5

#getting values from keys
value1 = hash1.get("Hello")
puts "Should return 1: "
puts "#{value1}"
value2 = hash1.get("World")
puts "Should return 2: "
puts "#{value2}"
value3 = hash1.get("bla")
puts "Should return an empty space or nil:"
puts "#{value3}"

size = hash1.load
puts "Should return 1 :"
puts "#{size}"

delete1 = hash1.delete("World")
puts "Should return 2: "
puts "#{delete1}"

delete2 = hash1.delete("bla")
puts "Should return an empty space or nil:"
puts "#{delete2}"



