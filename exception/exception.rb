begin
  a+1
rescue
  puts "exception ..."
end

# ---
begin
  1/0
rescue => e
  puts "exception: #{e.class.name}, #{e.message}, #{e.backtrace}"
end

# ---
begin
  case rand(3)
  when 1
    1/0
  when 2
    a+1
  when 3
    "".ttt
  end
rescue ZeroDivisionError => e
  puts "ZeroDivisionError ..."
rescue NameError => e
  puts "NameError ..."
else   
	puts "#{e.class.name}"
end

# ---
begin
	raise ArgumentError, "custome argument error"
	# raise "runtime error" # RuntimeErrors this way
rescue ArgumentError => e
	puts e.message
end

# ---
class CustomError < StandardError
	attr_reader :value

	def initialize(message,value)
		super(message)
		@value=value
	end
end

begin
	raise CustomError.new("Custom Error",2)
rescue => e
	puts "message: #{e.message}, value: #{e.value}"
end
