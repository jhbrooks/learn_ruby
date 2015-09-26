def add (n1, n2)
	n1 + n2
end

def subtract (n1, n2)
	n1 - n2
end

def sum (n_array)
	total = 0
	n_array.each do |n|
		total += n
	end
	total
end

def multiply (n1, n2, *more_nums)
	product = n1 * n2
	more_nums.each do |n|
		product *= n
	end
	product
end