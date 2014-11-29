require 'lego_stock_checker/base_check'

module LegoStockChecker
  class AmazonCheck < BaseCheck
    def in_stock?
      page.at_css('#merchant-info').text.include?('Ships from and sold by Amazon.com')
    end
  end
end
