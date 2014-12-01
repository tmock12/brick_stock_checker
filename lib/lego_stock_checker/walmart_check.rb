require 'lego_stock_checker/base_check'

module LegoStockChecker
  class WalmartCheck < BaseCheck
    def in_stock?
      !page.at_css('.btn-out-of-stock') &&
        !page.at_css('.outofStockMsg') &&
        page.at_css('.js-shipping-delivery-date-msg').try(:text) !~ /Not available/
    end

    def needs_preprocessing?
      true
    end
  end
end
