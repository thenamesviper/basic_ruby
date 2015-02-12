def check_format input   #	#*.##
	if input =~ /^[0-9]*\.?[0-9]{0,2}$/
		return true
	else
		return false
	end
end

def check_for_best array
	highest_profit = 0
	buy_position = 0
	sell_position = 0
	
	array.each do |value|
		for i in array.index(value)..(array.length-1) 
			if (array[i] - value) > highest_profit
				highest_profit = (array[i] - value)
				buy_position = array.index(value) 
				sell_position = i
			end
		end
	end
	"Your profit will be #{highest_profit} if you choose to buy on DAY #{buy_position+1} and sell on DAY #{sell_position+1}"
end

stock_values = []

puts "This program will pick the best time to buy and sell a stock given a set of values"
puts "You may enter integers or floats (rounded to the tenth or hundredth places only)"
puts "Please enter the first value:"
new_value = gets.chomp
index_position = 0
stock_values[index_position] = new_value.to_f



while new_value.upcase != "END" do
	while check_format(new_value) == false do
		puts "Your input was invalid. Please re-type it"
		new_value = gets.chomp
	end
	
	stock_values[index_position] = new_value.to_f
	if index_position == 0
		puts "Please enter a 2nd value or type 'END'"
		new_value = gets.chomp
	elsif index_position == 1
		puts "Please enter a 3rd value or type 'END'"
		new_value = gets.chomp
	else
		puts "Please enter a #{index_position + 2}th value or type 'END'"
		new_value = gets.chomp
	end
	index_position += 1
end

day = 1
stock_values.each do |value|
	puts "DAY #{day}: #{value}"
	day +=1
end

puts check_for_best(stock_values)


	