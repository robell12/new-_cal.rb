class Person
	attr_accessor :name, :time

	def initialize(name, time)
		puts "What is your name?"
		@name = gets.strip
		@time = 0
		times
	end

	def times
		puts "This is your first calculation. You have 4 total"
		if @time < 4
			@time = @time + 1
			calc
		else
			puts "That was your last calculation... please pay for more."
			exit
		end
	end

	def calc
		nums = {}
		puts "What calculation do you want to make"
		operation = gets.strip
		operation = operation.split
		nums = {:num1 => operation[0],
			:oper => operation[1],
			:num3 => operation[2]
		}

		first = nums.fetch(:num1)
		second = nums.fetch(:num3)
		operat = nums.fetch(:oper)

		#ans = first.to_i + second.to_i
		if nums[:oper] == "+"
			ans = first.to_i + second.to_i
		elsif nums[:oper] == "-"
			ans = first.to_i - second.to_i
		elsif nums[:oper] == "*"
			ans = first.to_i * second.to_i
		elsif nums[:oper] == "/"
			ans = first.to_i / second.to_i
		else
			puts "opss"
		end
		puts "#{first} #{operat} #{second} = #{ans}"
		times
	end

end

person_1 = Person.new(@name, @time)
