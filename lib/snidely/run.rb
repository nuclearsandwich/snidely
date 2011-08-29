class Snidely::Run
	def initialize template_dir, destination_dir
		Snidely::DryRun.run! manifest
	end

	def manifest
		@manifest = Hash.new
		files..each do |source|
			@manifest[File.absolute_path source] = Snidely.confile source
		end
	end
end
