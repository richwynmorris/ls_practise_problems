def one_thousand_lights(n)

	lights = {}

	1.upto(n) do |num|
		lights[num] = 'off' 
	end

	loop_num = 1

	loop do

		break if loop_num > n

		lights.each.map do | k, v |
			if k % loop_num == 0
				lights[k] == 'on'? lights[k] = 'off' : lights[k] = 'on'
			end
		end

		loop_num += 1

	end

	lights

end	

p one_thousand_lights(5)
p one_thousand_lights(5)

#PSEUDOCODE

#
