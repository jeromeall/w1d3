class Person
	attr_accessor :name, :age
	#attr_reader :name, :age
	#attr_writer : name, :age
	@@population = []


	def initialize(age, name)
		@name = name
		@age = age
		puts self
		# self refers to
		# a particular instance of the person class	
		@@population << self
	end

	def self.population
		@@population
	end

	#getter method (reader) - Accesses age from class Person
	# def age
	# 	@age
	# end

	# def name
	# 	@name
	# end

	#setter method (writer) for @age - lets you SET the value of @age
	def age=(other)
		@age = other
	end

	def name=(other)
		@name = other
	end

end