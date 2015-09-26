class Book
	attr_reader :title

	def titleize (s)
		is_first = true
		title_array = s.split(' ').each do |word|
			unless (["a","an","the","in","on","to","of","or","and","by","for","but","over","under"].include?(word) && (is_first == false))
				word.capitalize!
			end
			is_first = false
		end
		title = title_array.join(' ')
	end

	def title= (title)
		@title = titleize(title)
	end
end