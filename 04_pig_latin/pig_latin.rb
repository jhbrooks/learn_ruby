def translate_word (s)
	if ["a","e","i","o","u"].include?(s[0])
		return s + "ay"
	end
end

def translate (s)
	translate_word(s)
end