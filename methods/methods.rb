def f1(v1="v1",v2="v2")
	p "v1: #{v1}, v2: #{v2}"
end

f1 # "v1: v1, v2: v2"
f1 "test1", "test2" # "v1: test1, v2: test2"

def f2
	v=1
	k=2 # will return the last declared variable k.
end

p f2 # 2

def f3
	i,j,k=10,20,30
	return i,j,k
end

p f3 # [10, 20, 30]

def f4(*ps)
	p "ps: #{ps}, length:#{ps.length}"
end

f4(1,2,3) # "ps: [1, 2, 3], length:3"

class Class1
	def f1
		p "Class1 f1"
	end

	def Class1.f2
		p "Class1 f2"
	end
end

Class1.new.f1 # "Class1 f1"
Class1.f2 # "Class1 f2"

def mutate(array)
	array.pop
end

a=[1,2,3]
mutate(a)
p a # [1, 2]

def ff
	caller # returns an array of strings, call stacks
end

def fff
	ff
end

p fff # ["methods.rb:54:in `fff'", "methods.rb:57:in `<main>'"]

def mm
	p "mm"
end

def m(m1)
	method(m1).call
end

m(:mm) # "mm" must pass the function through as a symbol
