module WikiGalleries
	PLUGIN_NAME = :redmine_wiki_galleries
	THUMBNAILS_SIZE = 150

	@@gallery_count = 0
	def self.increase_count
		@@gallery_count += 1
	end
	
	def self.count
		@@gallery_count
	end

	def self.reset_count
		@@gallery_count = 0
	end

	def self.unquote_string(str)
    md = str.match(/\A["']?(.*?)["']?\z/)
    md ? md[1] : str
  end
end