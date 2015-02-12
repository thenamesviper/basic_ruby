 puts "Enter the phrase you wish to have encrypted via the Caesar Cipher"
plaintext = gets.chomp
until plaintext =~ /[A-Za-z]/    #makes sure at least one letter
	puts "There were no letters in your selection. Please re-enter phrase"
	plaintext = gets.chomp
end

puts "By how much do you with to shift the text? Select an integer between 1 and 25"
number_shift = gets.chomp
while number_shift =~ /\D/ || number_shift.to_i < 1 || number_shift.to_i>25 do    #makes sure input is 1<Z<26
	puts "Please check your input. Select an integer between 1 and 26"
	number_shift = gets.chomp
	end
number_shift = number_shift.to_i


def caesar_shift(plaintext,number_shift)
	ciphered_text = ""
	plaintext.each_char do |letter|
		ascii_value = letter.ord
		if ascii_value >= 65 && ascii_value <= 90
			new_ascii_value = ( ( (ascii_value -65) + number_shift)%26)
			ciphered_text += (new_ascii_value + 65).chr
		elsif ascii_value >= 97 && ascii_value <= 122
			new_ascii_value = ( ( (ascii_value-97) + number_shift)%26)
			ciphered_text += (new_ascii_value + 97).chr
		else
			ciphered_text += letter
		end
	end
	ciphered_text
end

puts caesar_shift(plaintext, number_shift)


