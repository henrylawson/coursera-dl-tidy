require_relative 'file_tidy'

class CourseeraDlClean

	def initialize
		@file_tidy = FileTidy.new([".mp4", ".srt", ".txt"])
	end

	def check
		@file_tidy.file_as_parent_folder_name! do |original, new|
			puts original + " => " + new
		end
	end

	def rename
		@file_tidy.file_as_parent_folder_name! do |original, new|
			File.rename(original, new)	
		end
	end
end
