class Snidely::Config < Mustache

	attr_accessor :file_path, :link_path

	def link_path
		@link_path || (lambda do |file_path|
			path = file_path.split('/')
			path[1] = '.' << path[1]
			path.join '/'
		end).call(@file_path)
	end
end
