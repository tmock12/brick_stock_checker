require 'lego_stock_checker/walmart_check'
require 'shared_examples_for_lego_stock_checkers'

describe LegoStockChecker::WalmartCheck do

  context 'when in stock' do
    describe '#in_stock?' do
      let(:html_file) { 'walmart-is.html' }
      let(:price) { 49.95 }
      it_behaves_like "in stock"
    end
  end

  context 'when out of stock' do
    describe "#in_stock?" do
      let(:html_file) { 'walmart-oos.html' }
      it_behaves_like "out of stock"
    end
  end

end
