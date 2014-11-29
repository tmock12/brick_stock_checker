require 'open-uri'
require 'nokogiri'
require 'phantomjs'
require 'lego_stock_checker/web_page_preprocessor'
require 'lego_stock_checker/object'

module LegoStockChecker
  class BaseCheck < Struct.new(:url)

    def self.in_stock?(url)
      return nil if url.blank?
      new(url).in_stock?
    end

    def page
      @page ||= Nokogiri::HTML(web_page)
    end

    def web_page
      needs_preprocessing? ? pre_processed : non_pre_processed
    end

    def non_pre_processed
      open(url, 'User-Agent' => user_agent)
    end

    def pre_processed
      WebPagePreprocessor.process(url)
    end

    def user_agent
      "mozilla/5.0 (windows nt 6.3; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/37.0.2049.0 safari/537.36"
    end

    def needs_preprocessing?
      false
    end

  end
end
