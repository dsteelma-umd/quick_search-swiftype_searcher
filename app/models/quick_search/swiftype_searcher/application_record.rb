module QuickSearch
  module SwiftypeSearcher
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
