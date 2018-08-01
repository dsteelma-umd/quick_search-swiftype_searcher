$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "quick_search/swiftype_searcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "quick_search-swiftype_searcher"
  s.version     = QuickSearch::SwiftypeSearcher::VERSION
  s.authors     = ["David P. Steelman"]
  s.email       = ["dsteelma@umd.edu"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of QuickSearch::SwiftypeSearcher."
  s.description = "TODO: Description of QuickSearch::SwiftypeSearcher."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"

  s.add_development_dependency "sqlite3"
end
