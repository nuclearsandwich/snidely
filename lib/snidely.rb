module Snidely
	def self.dotdir
		unless Dir.glob
		Dir.pwd
	end
	end

	def self.snidely_file
		@snidely_file ||=
			%w(.snidelyrc Snidefile).map{|s| Dir.pwd + s}.each do |file|
				File.exists? file
			end
	end

end
