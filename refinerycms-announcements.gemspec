Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-announcements'
  s.version           = '1.0'
  s.description       = 'Announcements is an engine for Refinery CMS to manage temporary announce. It can be used, for example, as an advertising system for your website.'
  s.date              = '2011-11-28'
  s.summary           = 'Announcements engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*']
  s.author            = "Cédric Bousmanne"
  s.email	      = "cedric@studio-sept.be"
  s.license	      = "MIT"
  s.homepage	      = "https://github.com/cedricbousmanne/refinerycms-announcements"
end
