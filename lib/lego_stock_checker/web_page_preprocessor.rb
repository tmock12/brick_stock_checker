module LegoStockChecker
  class WebPagePreprocessor
    SCRAPER_SCRIPT = File.open(File.dirname(__FILE__) + "/webscraper.js", 'r')
    LOOKUP_STRING = "-------------------- HTML GOES HERE -------------------------"

    def self.process(url)
      new(url).process
    end

    def initialize(url)
      @url = url.to_s
    end

    def process
      html = Phantomjs.run(SCRAPER_SCRIPT, @url).to_s
      html.split(LOOKUP_STRING, 2)[1]
    end
  end
end
