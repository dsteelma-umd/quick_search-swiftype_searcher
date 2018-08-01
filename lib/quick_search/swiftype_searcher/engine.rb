module QuickSearch
  module SwiftypeSearcher
    class Engine < ::Rails::Engine
      isolate_namespace QuickSearch::SwiftypeSearcher
    end
  end
end
