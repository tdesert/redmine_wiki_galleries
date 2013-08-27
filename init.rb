#TODO: Delete unused JS and CSS files if any

Redmine::Plugin.register :wiki_image_galleries do
  name 'Wiki Image Galleries plugin'
  author 'Thomas Desert'
  description 'Image galleries enabled in wiki pages'
  version '0.0.1'
  url 'http://husht.org'
  author_url 'http://husht.org/about'
end

require "constants"
require "hooks"
require "wiki_macro"
