class FileTidy

	FILE_EXTENSION_DOT = '.'

	def initialize(filetypes)
		@filetypes = filetypes
	end

	def file_as_parent_folder_name!
		@filetypes.each do |filetype|
			Dir.glob('**/*' + filetype).each do |filename|
				yield(filename, filename_as_parent_folder_name(filename))
			end
		end
	end

	private

	def filename_as_parent_folder_name(filename)
		split_filename = filename.split(File::SEPARATOR)
		filetype = split_filename[-1].split(FILE_EXTENSION_DOT)[-1]
		split_filename[-1] = remove_index(split_filename[-2]) + FILE_EXTENSION_DOT + filetype
		split_filename.join(File::SEPARATOR)
	end

	def remove_index(filename)
		filename[5..-1]
	end

end
