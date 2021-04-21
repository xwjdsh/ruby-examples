class Class1
  # A constant doesn’t require any special symbol or syntax to declare, 
  # just make the first letter an uppercase letter, valid constants:
  ABC = "ABC"
  Goo = "Goo"
end

puts Class1::ABC

# constant can change because variables in Ruby are not containers, they are simply pointers to objects.
Class1::Goo="GOO"  # warning: already initialized constant Class1::Goo
puts Class1::Goo

# TEST = "test".freeze
# can't modify frozen String (FrozenError)
# TEST << " hhh" 

# uninitialized constant Class1::GOO (NameError)
# puts Class1::GOO 

# def f
  # # can’t define constants inside a method, error: "dynamic constant assignment"
  # T = 1  
# end
