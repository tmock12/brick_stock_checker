require 'lego_stock_checker/base_check'

module LegoStockChecker
  class TruCheck< BaseCheck
    def in_stock?
      !page.at_css("#eligibility li:first").attributes["class"].to_s[/\sunavail\s/] if page.at_css("#eligibility li:first") && !!page.at_css("li.avail")
    end

    def price
      page.at_css('#price .retail').try(:text).to_s.strip.sub('$','').to_f if in_stock?
    end
  end
end
