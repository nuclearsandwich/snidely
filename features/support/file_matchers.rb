RSpec::Matchers.define :contain_file do |filename|
	match do |directory|
		File.exists? "#{directory}/#{filename}"
	end
end
