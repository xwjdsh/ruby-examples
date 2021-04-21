# while
I=0
NUM=3

i=I
while i<=NUM
  print i," "
  i+=1
end
print "\n"

# until
i=I
begin
  print i," "
  i+=1
end until i>NUM
print "\n"

# for
for i in I..NUM
  print i," "
end
print "\n"

# each
(I..NUM).each do |i|
  print i," "
end
print "\n"

print "\n"
# ---

for i in (0..5)
  if i%2==0
    next
  end
  print i," "
end
print "\n"
