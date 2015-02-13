def substring (string, array_of_words)
	occurences = Hash.new(0)
	array_of_words.each do |word|
		occurences[word] = string.upcase.scan(word.upcase).count
	end
	occurences
end
dictionary = []

puts "Please enter a letter or word to add to the dictionary"
word = gets.chomp

while(word != "!") do
	dictionary.push(word)
	puts "Enter next letter/word or '!' to complete"
	word = gets.chomp
end
puts "Enter your text"
text = gets.chomp

substring(text, dictionary).each do |word, count|
	puts "#{word}: #{count}"
end

