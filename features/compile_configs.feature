Feature: compile config files
	In order to share my files across multiple and varied machines
	As a programmer with too many toys
	I want to generate machine specific configuration files

	Scenario Outline: compiling for a specific machine
		Given the shell variable "$HOME" is set to "./testdir"
		And I am in "./testdir/.dotfiles" containing <Template File>
		When I type `snidely compile`
		Then the files <Config File> should exist
		Examples:
			|  Template File   |    Config File    |
			| bashrc           | .bashrc           |
			| bash_profile     | .bash_profile     |
			| xmonad/xmonad.hs | .xmonad/xmonad.hs |
