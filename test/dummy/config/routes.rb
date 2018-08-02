Rails.application.routes.draw do
  mount QuickSearchSwiftypeSearcher::Engine => "/quick_search-swiftype_searcher"
end
