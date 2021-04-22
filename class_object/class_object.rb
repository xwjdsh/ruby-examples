class Class1
  # class variables
  @@count=0

  # constructor
  def initialize(a,b,c,d,e)
    # instance variables
    @a,@b,@c,@d,@e=a,b,c,d,e
    @@count+=1
  end

  def update(a,b,c,d,e)
    @a,self.b,@c,self.d,self.e=a,b,c,d,e
  end

  # classical get method
  def a
    @a
  end

  def b
    @b
  end

  # classical set method
  def b=(b)
    @b=b
  end

  def to_s
    "Class1(a: #@a, b: #@b, c: #@c, d: #@d, e: #@e)"
  end

  def self.count
    @@count
  end

  def private_f
    "private_f"
  end

  def protected_f
    "protected_f"
  end

  private :private_f
  protected :protected_f

  attr_reader :c
  attr_writer :d
  attr_accessor :e # attr_reader && attr_writer
end


c=Class1.new "a","b","c","d","e"
puts c.a
puts c.b
puts c.b="bb"
puts c.c
puts c.d="dd"
puts c.e
puts c.e="ee"
puts c # puts c.to_s
puts Class1.count # 1
# puts c.private_f # can't access 
# puts c.protected_f # can't access 
#
c.update("aa","bb","cc","dd","ee")
puts c # Class1(a: aa, b: bb, c: cc, d: dd, e: ee)
