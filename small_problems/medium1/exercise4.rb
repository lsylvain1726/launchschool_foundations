# exercise4.rb

# bank of switches numbered 1 to 1000
# each switch is connected to one light
# each light is initially off
# you walk down row of switches and turn everyone on
# then you go back to beginning and toggle switches 2, 4, 6
# repeat this for switches 3, 6, 9....
# keep going until you have done this 1000 times
# write a program that determines which lights are on at the end

def toggle_on_or_off(lights)
  1.upto(lights.size) do |round_number|
    lights.each do |position, value|
      if position % round_number == 0
        value == "off" ? lights[position] = "on" : lights[position] = "off"
      end
    end
  end
end

def on_lights(lights)
  lights.keys.select { |key| lights[key] == "on"  }
end

lights = Hash.new
1.upto(1000) { |number| lights[number] = "off" }
toggle_on_or_off(lights)
p on_lights(lights)





