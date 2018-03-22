# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  if my_words == nil
    return nil
  end

  start_index = 0
  end_index = 0

  my_words.length.times do |i|
    if my_words[i] == " "
      end_index = i - 1
      my_words = reverse_string(my_words, start_index, end_index)
      start_index = i + 1
    end

    if i == my_words.length - 1
    	end_index = i
    	my_words = reverse_string(my_words, start_index, end_index)
    end
  end

  return my_words
end

def reverse_string(string, start_index, end_index)
	i = start_index
	j = end_index
	while i < j
	  temp = string[i]
  	string[i] = string[j]
		string[j] = temp
		i += 1
  	j -= 1
  end

  return string
end
