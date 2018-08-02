# frozen_string_literal: true

require 'test_helper'

module QuickSearch
  class SwiftypeSearcher
    # SwiftypeSearcher tests
    class Test < ActiveSupport::TestCase
      test 'truth' do
        assert_kind_of Module, QuickSearch::SwiftypeSearcher
      end
    end
  end
end
