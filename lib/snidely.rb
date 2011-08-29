require_relative "snidely/version"
require_relative "snidely/run"
require_relative "snidely/dry_run"

Snidely = Module.new

def Snidely.confile file
	"#{ENV['HOME']}/.#{file}"
end
