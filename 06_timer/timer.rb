class Timer
	# Make seconds accessible
	attr_accessor :seconds
  	
  	# Start with them at 0
  	def initialize
  		@seconds = 0
  	end

  	def time_string
  		# 3600 seconds in an hour
  		hours = @seconds / 3600
  		# Have minutes rollover every hour
  		mins = (@seconds % 3600) / 60
  		# Have seconds rollover every second
  		secs = @seconds % 60
  		# Use the 0 modifer for sprintf to add padding
  		sprintf('%02d:%02d:%02d', hours, mins, secs)
  	end
end