def echo (word)
	word
end

def shout (word)
	word.upcase
end

def repeat (word, num = 2)
	output = []
	# Copy the word into an array num times
	num.times {|w| output[w] = word}
	# Join them with spaces
	output.join(' ')
end

def start_of_word (word, num)
	word[0, num]
end

def first_word (sentence)
	# Make an array of the words. Return the first one
	words = sentence.split
	words[0]
end

def titleize (title)
	# An array of small words. Feel free to update
	small_words = ['of', 'and', 'the', 'to', 'a', 'an', 'at', 'in', 'over']
	output = []
	# Make an array of the words
	words = title.split
	# Make sure the first word is always capitalized
	words[0].capitalize!
	# Work through the rest of the words and capitalize all that aren't small
	output = words.collect do |w|
		if small_words.include?(w)
			w
		else
			w.capitalize
		end	
	end
	# Join the words in the array with spaces
	output.join(' ')
end