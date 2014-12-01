require 'lego_stock_checker/base_check'

module LegoStockChecker
  class LegoShopCheck < BaseCheck
    def in_stock?
      !page.at_css("li[class*='availability']").text.match(/sold out|out of stock|call to check/i)
    end
  end
end
