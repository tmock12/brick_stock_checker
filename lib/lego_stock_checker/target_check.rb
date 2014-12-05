require 'lego_stock_checker/base_check'

module LegoStockChecker
  class TargetCheck < BaseCheck
    def in_stock?
      !!page.at_css("#textblock1 #addToCart") &&
        page.at_css("#textblock1 .availmsg").try(:text).to_s !~ /out of stock/
    end

    def price
      page.at_css('.offerPrice').try(:text).strip.sub('$','').to_f if in_stock?
    end

    def needs_preprocessing?
      true
    end
  end
end
