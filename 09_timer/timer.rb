class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		secs = padded(@seconds % 60) 
		mins = padded((@seconds / 60) % 60)
		hrs = padded((@seconds / 60) / 60)
		"#{hrs}:#{mins}:#{secs}"
	end

	def padded (n)
		if n < 10
			return "0" + n.to_s
		else
			return n.to_s
		end
	end
end