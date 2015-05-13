#Configuration for irb and rails console
#Author: Dave Hand
#Dependencies: ruby and rubygems

#better output formatting
require 'awesome_print'
AwesomePrint.irb!
#colored font
require 'wirb'
Wirb.start
