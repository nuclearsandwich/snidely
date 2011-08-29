class Snidely::DryRun
	def self.run! manifest
		manifest.each do |src, dest|
			puts "Would symlink #{src} to #{dest}"
		end
	end
end
