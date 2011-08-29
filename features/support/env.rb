def root
	@root ||= Dir.pwd
end

root

def bindir
	"#{root}/bin"
end
