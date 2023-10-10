# Problem:


# Test cases:


# input:
# integer

# output:
# array

# rules:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# initialize_lights(number of lights)
# 	create a new hash and save as lights variable
# 	loop up to the number of lights provided
# 		every iteration, number will be the key for lights and the value will be 'off'
# 	return the lights hash 
# end 
	
	
# toggle_every_nth_light!(lights, nth)
# 	iterate through the lights
# 		if the position is divisible by the nth number provided, 
# 			for the light in that position/key of the hash, change its state (if it's   off, turn it on; if it's not off, turn it off)
# end 


# on_lights(lights)
# 	select the lights that are in an 'on' state and return an array of those keys 
# end 


# toggle_lights(number of lights)
# 	initialize the number of lights provided and save to lights variable
# 	loop up to the size/number of lights 
# 		on every iteration number, toggle the lights that are divisible by that number()
# 	return an array of the lights that are on 
# end

def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = 'off' }
  lights
end

def toggle_every_nth_light!(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == 'off') ? 'on' : 'off'
    end
  end
end

def on_lights(lights)
  lights.select { |_position, state| state == 'on' }.keys
end

def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) { |i| toggle_every_nth_light!(lights, i) }
  on_lights(lights)
end

puts toggle_lights(5) == [1, 4]
puts toggle_lights(10) == [1, 4, 9]