a=[1,""]
p a

a=Array.new
p a

a=Array.new(3) # [nil,nil,nil]
p a

a=Array.new(3, 1) # [1,1,1]
p a

a=Array.new(3) {|i| i*2} # [0,2,4]
p a

a=Array(0..3)
p a

h={:a=>3,:b=>4}
p h.to_a # [[:a, 3], [:b, 4]]

# --- do not change original array
puts
a=Array(0..10)
p a.length # 11
p a.first # 0
p a.last # 10
p a.take(3) # [0,1,3] first n elements of the array
p a.drop(8) # [8,9,10] after n elements of the array
p a[100] # nil, no "index out of range" error
p a.select {|x| x%2==0 and x<5} # [0,2,4]
print "#{a.include?(3)},#{a.include?(100)}\n" # true,false  check given argument is included in the array
p a.join(",") # "0,1,2,3,4,5,6,7,8,9,10"
p a.reverse # [10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]

na=[]
a.each do |x|
  if x%2==0 and x<5
    na.push(x)
  end
end
p na # [0,2,4]

p a.map {|x| x*2} # [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

a1=[1,1,1,1]
p a1.uniq # [1]


# --- will change original array
puts

a=[1,2]
a.push(3,4,5) # [1, 2, 3, 4, 5], add elements to the end of an array
p a

a=[1,2]
a.unshift(3,4,5) # [3, 4, 5, 1, 2], add elements to the first of an array
p a

a=[1,1,2]
a.delete(1)  # removes a specified element
p a # [2]

a=[1,2,3]
a.delete_at(1)  # remove an element of an array at a specified index
p a # [1,3]

a=[1,2]
p a.pop # 2, remove the last element of an array and return this element
p a.pop # 1
p a.pop # nil
p a # []

a=[1,2]
p a.shift # 1, remove the first element of an array and return this element
p a.shift # 2
p a.shift # nil
p a # []
