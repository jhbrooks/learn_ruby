def translate_word (s, cons_buff='', is_cap='false')
	if (cons_buff == '') && (s == s.capitalize)
		is_cap = true
	end

	numbers = ["0","1","2","3","4","5","6","7","8","9"]
	has_nums = false
	numbers.each { |n| has_nums = true if s.include?(n) }

	vowels = ["a","e","i","o","u"]
	consonants = ["b","c","d"] + ["f","g","h"] + ["j","k","l","m","n"] + ["p","q","r","s","t"] + ["v","w","x","y","z"]
	u_vowels = []
	vowels.each { |v| u_vowels << v.upcase }
	u_consonants = []
	consonants.each { |c| u_consonants << c.upcase }

	if has_nums == true
		return s
	elsif (vowels.include?(s[0]) || u_vowels.include?(s[0])) && !((s[0] == "u" || s[0] == "U") && (cons_buff != '' && (cons_buff[-1,1] == 'q' || cons_buff[-1,1] == 'Q')))
		if is_cap == true
			return s[0].upcase + s[1...(s.length)] + cons_buff + "ay"
		else
			return s + cons_buff + "ay"
		end
	elsif (consonants.include?(s[0]) || u_consonants.include?(s[0])) || ((s[0] == "u" || s[0] == "U") && (cons_buff != '' && (cons_buff[-1,1] == 'q' || cons_buff[-1,1] == 'Q')))
		if is_cap == true
			return translate_word(s[1...(s.length)], (cons_buff + s[0].downcase), is_cap)
		else
			return translate_word(s[1...(s.length)], (cons_buff + s[0]), is_cap)
		end
	else
		return s
	end
end

def translate (s)
	words = s.split(/(\W+)/)
	pig_words = []
	words.each { |w| pig_words << translate_word(w) }
	pig_string = pig_words.join('')
end