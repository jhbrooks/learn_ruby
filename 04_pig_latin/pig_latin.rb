def translate_word (s, cons_buff='')
	vowels = ["a","e","i","o","u"]
	consonants = ["b","c","d"] + ["f","g","h"] + ["j","k","l","m","n"] + ["p","q","r","s","t"] + ["v","w","x","y","z"]
	u_vowels = []
	vowels.each { |v| u_vowels << v.upcase }
	u_consonants = []
	consonants.each { |c| u_consonants << c.upcase }
	if (vowels.include?(s[0]) || u_vowels.include?(s[0])) && !((s[0] == "u" || s[0] == "U") && cons_buff != '')
		return s + cons_buff + "ay"
	elsif (consonants.include?(s[0]) || u_consonants.include?(s[0])) || ((s[0] == "u" || s[0] == "U") && cons_buff != '')
		return translate_word(s[1...(s.length)], (cons_buff + s[0]))
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