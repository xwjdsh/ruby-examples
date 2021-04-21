def f(x)
  if x<0
    x=-x
  elsif x==0
    x=nil
  else
    x=x**2
  end
  x # implicit return
end
    
p f(2)
p f(0)
p f(-2)

$debug=false
unless $debug
  $debug=true
end

p "debug (if modifier)" if $debug
p "debug (unless modifier)" unless !$debug

# case
$score=80
case $score
when 0..59
  puts "0..59"
when 60..84
  puts "60..84"
when 85..100
  puts "85..100"
else
  puts "unexpected: #{x}"
end

# https://stackoverflow.com/questions/3801469/how-to-catch-errnoeconnreset-class-in-case-when
case $score # can't be $score.class
when Float, Integer
  puts "Number"
else
  puts "Unknown"
end

