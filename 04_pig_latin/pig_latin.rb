def translate_word (s)
	vowels = ["a","e","i","o","u"]
	consonants = ["b","c","d"] + ["f","g","h"] + ["j","k","l","m","n"] + ["p","q","r","s","t"] + ["v","w","x","y","z"]
	u_vowels = vowels.each { |v| v.upcase }
	u_consonants = consonants.each { |c| c.upcase }
	if (vowels.include?(s[0]) || u_vowels.include?(s[0]))
		return s + "ay"
	elsif (consonants.include?(s[0]) || u_consonants.include?(s[0]))
		return s[1...(s.length)] + s[0] + "ay"
	else
		return s
	end
end

def translate (s)
	translate_word(s)
end