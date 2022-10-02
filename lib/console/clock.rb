# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2021, by Samuel Williams.

module Console
	module Clock
		def self.formatted_duration(duration)
			if duration < 60.0
				return "#{duration.round(2)}s"
			end
			
			duration /= 60.0
			
			if duration < 60.0
				return "#{duration.round}m"
			end
			
			duration /= 60.0
			
			if duration < 60.0
				return "#{duration.round(1)}h"
			end
			
			duration /= 24.0
			
			return "#{duration.round(1)}d"
		end
		
		# Get the current elapsed monotonic time.
		def self.now
			::Process.clock_gettime(::Process::CLOCK_MONOTONIC)
		end
	end
end
