Rails.application.routes.draw do
  mount QuickSearch::SwiftypeSearcher::Engine => "/quick_search-swiftype_searcher"
end
