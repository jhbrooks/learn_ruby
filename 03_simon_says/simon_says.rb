def echo (s)
	s
end

def shout (s)
	s.upcase
end

def repeat (s, n_times=2)
	if n_times == 1
		return s
	else
		return s + ' ' + repeat(s, n_times - 1)
	end
end

def start_of_word (s, letters)
	s[0..(letters-1)]
end

def first_word (s)
	word_array = s.split(/ +/)
	word_array[0]
end

def titleize (s)
	title_array = s.split(' ').each do |word|
		word.capitalize!
	end
	title = title_array.join(' ')
end