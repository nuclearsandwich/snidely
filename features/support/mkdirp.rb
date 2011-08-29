def Dir.mkdir_tree dirname
	directories = dirname.split '/'
	directories.count.times do |i|
		Dir.mkdir directories[0..i].join('/') unless Dir.exists?(
			directories[0..i].join('/'))
	end
end
