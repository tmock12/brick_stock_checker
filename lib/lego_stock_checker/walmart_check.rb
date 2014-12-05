require 'lego_stock_checker/base_check'

module LegoStockChecker
  class WalmartCheck < BaseCheck
    def in_stock?
      !page.at_css('.btn-out-of-stock') &&
        !page.at_css('.outofStockMsg') &&
        page.at_css('.js-shipping-delivery-date-msg').try(:text) !~ /Not available/
    end

    def price
      return unless in_stock?
      price = case
              when page.at_css('.bigPriceText1')
                page.at_css('.bigPriceText1')
              when page.at_css('.price')
                page.at_css('.price')
              end

      price.try(:text).to_s.strip.sub('$','').to_f if price
    end

    def needs_preprocessing?
      true
    end
  end
end
