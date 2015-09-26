class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def padded (n)
		if n < 10
			return "0" + n.to_s
		else
			return n.to_s
		end
	end
end