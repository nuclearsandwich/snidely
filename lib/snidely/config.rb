class Snidely::Config < Mustache

	# `@file_path` and `@link_path`
	# These two attributes are used to generate the
	attr_accessor :file_path, :link_path

	# The link path is generally inferable if one follows the standard .dotfile
	# convention. Otherwise it must be specified using the provided mutator.
	# (`Config#link_file=`) This overridden accessor first checks if a link_file
	# has been specified, otherwise it infers the link path from the config's
	# file path by placing a '.' at the start of the first file or folder name.
	# For example "
	def link_path
		@link_path || (lambda do |file_path|
			path = file_path.split('/')
			path[1] = '.' << path[1]
			path.join '/'
		end).call(@file_path)
	end
end
