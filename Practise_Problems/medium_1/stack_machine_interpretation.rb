def print_reg(current_reg)
	puts "#{current_reg}"
end

def push_reg(current_reg, stack)
	stack << current_reg.dup
end 

def multiply_pop_with_reg(current_reg, stack)
	current_reg.replace (current_reg.to_i * stack.pop.to_i).to_s
end

def add_pop_with_reg(current_reg, stack)
	current_reg.replace (current_reg.to_i + stack.pop.to_i).to_s
end

def pop_from_stack(current_reg, stack)
	current_reg.replace stack.pop
end

def divide_pop_with_reg(current_reg, stack)
	current_reg.replace (current_reg.to_i / stack.pop.to_i).to_s
end

def mod_pop_with_reg(current_reg, stack)
	current_reg.replace (current_reg.to_i % stack.pop.to_i).to_s
end

def sub_pop_with_reg(current_reg, stack)
	current_reg.replace (current_reg.to_i - stack.pop.to_i).to_s
end



def minilang(str)

	str_arr = str.split

	stack = []

	register = '0'

	str_arr.each do |current_command|
		if current_command == current_command.to_i.to_s
			register.replace current_command
		elsif current_command == 'PRINT'
			print_reg(register)
		elsif current_command == 'PUSH'
			push_reg(register, stack)
		elsif current_command == 'MULT'
			multiply_pop_with_reg(register, stack)
		elsif current_command == 'ADD'
			add_pop_with_reg(register, stack)
		elsif current_command == 'POP'
			pop_from_stack(register, stack)
		elsif current_command == 'DIV'
			divide_pop_with_reg(register, stack)
		elsif current_command == 'MOD'
			mod_pop_with_reg(register, stack)
		elsif current_command == 'SUB'
			sub_pop_with_reg(register, stack)
		end
	end

end 


#RESULTS:

minilang('6 PUSH')

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')


