#write your code here
def add (a, b)
	a + b
end

def subtract (a, b)
	a - b
end

def sum (array)
	total = 0
	# Pop numbers out of the array and add them together until none are left
	while array.length != 0
		total += array.pop
	end
	total
end

def multiply (array)
	total = 1
	# Pop numbers from the array and multiply them until none are left
	while array.length != 0
		total *= array.pop
	end
	total
end

def power (a, b)
	total = 1
	# Multiply a by itself b times
	b.times do 
		total *= a
	end
	total
end

def factorial (a)
	total = 1
	# Count up to a and multiply the total by each number
	a.times { |i| total *= (i + 1)}
	total
end