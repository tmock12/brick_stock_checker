require 'lego_stock_checker/base_check'

module LegoStockChecker
  class AmazonCheck < BaseCheck
    def in_stock?
      page.at_css('#merchant-info').text.include?('Ships from and sold by Amazon.com')
    end

    def price
      if in_stock?
        if price_span = page.at_css('span#priceblock_ourprice')
          return price_span.text.to_s.strip.sub('$','').to_f
        end
      end
    end
  end
end
