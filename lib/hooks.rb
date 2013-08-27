class WikiImageGalleriesHook < Redmine::Hook::ViewListener
	def view_layouts_base_html_head(context={})
		str = ''
		# Including lightbox resources
		str << javascript_include_tag("lightbox-2.6.min.js", plugin: WikiImageGalleries::PLUGIN_NAME)
		str << stylesheet_link_tag("lightbox.css", plugin: WikiImageGalleries::PLUGIN_NAME)
		str << stylesheet_link_tag("wiki_image_galleries.css", plugin: WikiImageGalleries::PLUGIN_NAME)
		# Reset gallery count in module
		WikiImageGalleries.reset_count()
		str.html_safe
	end
end