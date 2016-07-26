def translate (sentence)
	# Default to splitting at 0, essentially doing nothing
	splitpoint = 0
	# Make an array out of the words fed in
	words = sentence.split
	# Using map rather than each because we are doing things to the information
	# fed in rather than just performing an operation with each bit
	output = words.map do |word|
		# Check to see if it starts with 'qu' (using regex)
		if word =~ /^qu/
			# Find the index of the first vowel after the 'qu'
			splitpoint = word.index(/[aeiou]/, 2)
		else
			# Find the index of the first vowel
			splitpoint = word.index(/[aeiou]/)
			# If the first vowel is the 'u' in a 'qu', find the next vowel
			if word[splitpoint - 1] == 'q'
				splitpoint = word.index(/[aeiou]/, (splitpoint + 1))
			end
		end
		# Split the word in the correct place, reorder it and add an 'ay'
		word.slice(splitpoint..-1) + word[0, splitpoint] + 'ay'
	end
	# Join everything back together again with spaces in between the words
	output.join(' ')
end