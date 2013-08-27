class WikiImageGalleriesHook < Redmine::Hook::ViewListener
	def view_layouts_base_html_head(context={})
		str = ''
		# Including lightbox resources
		str << javascript_include_tag("lightbox-2.6.min.js", :plugin => WikiGalleries::PLUGIN_NAME)
		str << stylesheet_link_tag("lightbox.css", :plugin => WikiGalleries::PLUGIN_NAME)
		str << stylesheet_link_tag("wiki_galleries.css", :plugin => WikiGalleries::PLUGIN_NAME)
		# Reset gallery count in module
		WikiGalleries.reset_count()
		str.html_safe
	end
end