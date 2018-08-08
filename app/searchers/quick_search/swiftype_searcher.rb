# frozen_string_literal: true

module QuickSearch
  # QuickSearch seacher for UMD Library Website using Swiftype
  class SwiftypeSearcher < QuickSearch::Searcher
    def search
      raw_response = @http.get(base_url, parameters)
      @response = JSON.parse(raw_response.body)
    end

    def results # rubocop:disable Metrics/MethodLength
      if results_list
        results_list
      else
        @results_list = []

        pages = @response['records']['page']

        pages.each do |value|
          result = OpenStruct.new
          result.title = value['title']
          result.link = value['url']
          result.description = description(value)
          @results_list << result
        end

        @results_list
      end
    end

    def description(value)
      value.dig('highlight', 'body')
    end

    def base_url
      QuickSearch::Engine::SWIFTYPE_CONFIG['search_url']
    end

    def parameters
      {
        'q' => http_request_queries['not_escaped'],
        'per_page' => '3',
        'engine_key' => QuickSearch::Engine::SWIFTYPE_CONFIG['engine_key']
      }
    end

    def total
      @response.dig('info', 'page', 'total_result_count')
    end

    def loaded_link
      QuickSearch::Engine::SWIFTYPE_CONFIG['loaded_link'] + http_request_queries['uri_escaped']
    end
  end
end
