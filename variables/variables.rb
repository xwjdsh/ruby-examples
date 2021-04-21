$global_variable = 10

class Class1
  @@count=0
  def initialize(id,name)
    @@count+=1
    @id=id
    @name=name
  end

  def print_self
    puts "print_self: #{self.class}(id: #@id, name: #@name)"
  end

  def print_global_variable
    puts "print_global_variable: #$global_variable"
  end

  def print_count
    puts "print_count: #@@count"
  end
end

puts "script name: #$0"
puts "commnad line arguments: #$*"

c=Class1.new(1,"hhh")
c.print_global_variable
c.print_self
c.print_count
