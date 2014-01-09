# #return a local variable
# def add_two_variables(num1, num2=3)
# 	return num1 + num2
# end

# puts add_two_variables(7)

# num1 = 100.5


# puts "Addition: #{num1} + #{3} = #{add_two_variables(num1).round(2)}"

array = [1,2,3,4,5,6,7]

# def sum_array(num_array)
# 	sum = 0
# 	num_array.each {|each| sum+=each}
# 	return sum
# end

# sum_array(array)

 
def inject_array(num_array) 
	num_array.inject(1) {|mult, each| mult *= each}
end

puts inject_array(array)

def add_arguments(num1, num2, num3, *rest)
	puts num1
	puts num2
	puts num3
	p rest
	if rest.empty?
		return num1+num2+num3
	else
		rest.push(num1)
		rest.push(num2)
		rest.push(num3)
		rest.inject(0) {|sum,num| sum += num}
	end
end

puts "Adding multiple arguments: #{add_arguments(1,2,3,4,5,6,7,8,9)}"
puts "Adding 2: #{add_arguments(1,2,3)}"

def calculator (num1, num2, operation)
	result =  case operation
	when operation = "add"
		 num1 + num2
	when operation = "subtract"
		 num1 - num2 
	when operation = "multiply"
		 num1 * num2
	when operdation = "divide"
		 num1 / num2 
	else
		"That wont work"
	end
	return result.round(2)
end

puts "Multiply 2 by 100: #{calculator(2,100,"multiply")}"

def calculate (num1, num2, **options_hash)
	result = case options_hash[:operation]
	when "Add"
		result = num1 + num2
		result.round(options_hash[:precision])
	when "subtract"
		result = num1 - num2
		result.round(options_hash[:precision])	
	else 
		"that doesn't work yet"
	end
	return result
end

puts calculate(3,4,operation: "Add", precision: 2)