Redmine::WikiFormatting::Macros.macro :gallery do |obj, args|
	str = ""
	if obj.respond_to?(:attachments) && obj.attachments.any?
		str << "<div class='wiki_gallery'>"
		args.each do |arg|
			arg = WikiGalleries.unquote_string(arg)
			attach = obj.attachments.find_all_by_filename(arg).first
			if (attach)
				image_path = download_named_attachment_path(attach[:id], arg)
				thumb_path = thumbnail_path(attach[:id], WikiGalleries::THUMBNAILS_SIZE)
				img_tag = image_tag(thumb_path)

				html_options = {}
				html_options["data-lightbox"] = "wiki-gallery-#{WikiGalleries.count()}"
				html_options[:title] = attach.description unless attach.description == nil
				str << link_to(img_tag, image_path, html_options)
			end
		end
		str << "<hr /></div>"
	end
	WikiGalleries.increase_count()
	str.html_safe
end