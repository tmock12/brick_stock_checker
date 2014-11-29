require 'lego_stock_checker/base_check'

module LegoStockChecker
  class TruCheck< BaseCheck
    def in_stock?
      !page.at_css("#eligibility li:first").attributes["class"].to_s[/\sunavail\s/] &&
        !!page.at_css("li.avail")
    end
  end
end
