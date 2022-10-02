# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2021, by Samuel Williams.

require_relative '../terminal/logger'

module Console
	module Output
		module Text
			def self.new(output, **options)
				Terminal::Logger.new(output, format: Terminal::Text, **options)
			end
		end
	end
end
