class Book
	# Make the title accessible
	attr_accessor :title

	def title= (words)
		# An array of small words. Feel free to update
		small_words = ['the', 'a', 'an', 'and', 'in', 'of']
		# Turn the words into an array using split, which defaults to splitting
		# at spaces in the string
		word_array = words.split
		# Always capitalize the first word
		word_array[0].capitalize!
		# Capitalize everything that isn't a small word
		word_array.each do |word|
			if small_words.include?(word)
				word
			else
			word.capitalize!
			end
		end
		#Join them all back together
		@title = word_array.join(' ')
	end
end