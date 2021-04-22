class Mammal
  def breathe
    puts "#{self.class} > breathe..."
  end

  def speak
    puts "#{self.class} > speak..."
  end
end 

class Cat < Mammal
  # override
  def speak
    puts "miaow..."
  end
end

cat=Cat.new
cat.breathe # Cat > breathe...
cat.speak # miaow...

# ---
puts

class Dog
  def initialize(breed)
    @breed=breed
  end
end

class Lab < Dog
  def initialize(breed,name)
    super(breed)
    @name=name
  end

  def to_s
    "#@breed #@name"
  end
end

lab=Lab.new "Labrador", "Benzy"
puts lab # Labrador Benzy
