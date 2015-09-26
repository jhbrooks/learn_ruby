def translate_word (s)
	if ["a","e","i","o","u"].include?(s[0])
		return s + "ay"
	elsif (["b","c","d"] + ["f","g","h"] + ["j","k","l","m","n"] + ["p","q","r","s","t"] + ["v","w","x","y","z"]).include?(s[0])
		return s[1...(s.length)] + s[0] + "ay"
	else
		return s
	end
end

def translate (s)
	translate_word(s)
end