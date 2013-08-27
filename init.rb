#TODO: Delete unused JS and CSS files if any

Redmine::Plugin.register :redmine_wiki_galleries do
  name 'Wiki Galleries plugin'
  author 'Thomas Desert'
  description 'Lightbox galleries enabled in wiki pages'
  version '0.0.1'
  url 'http://husht.org'
  author_url 'http://husht.org/about'
end

require "wiki_galleries"
require "hooks"
require "wiki_macro"
