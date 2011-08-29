Given /^the shell variable "([^"]*)" is set to "([^"]*)"$/ do |var, homepath|
	@home_dir = ENV[var] = homepath
end

Given /^I am in "([^"]*)" containing (\S+)$/ do |directory, filename|
	*prefix, file = filename.split('/')
	Dir.mkdir_tree "#{@pwd}/#{prefix.join('/')}"
	File.open "#{@pwd}/#{directory}/#{filename}", "w" do |file|
		file.puts "Contents of #{filename}"
	end
end

When /^I type `(.*)`$/ do |cmd|
	system "cd #{@pwd} && #{bindir}/#{cmd}"
end

Then /^the files (\S) should exist$/ do |filename|
  @home_dir.should contain_file filename
end
