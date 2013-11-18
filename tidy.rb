#!/usr/bin/env ruby

require_relative 'coursera_dl_clean'

instance = CourseeraDlClean.new
if ARGV.include? "check" then
	instance.check
end
if ARGV.include? "rename" then
	instance.rename
end
