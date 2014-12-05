require 'lego_stock_checker/tru_check'
require 'shared_examples_for_lego_stock_checkers'

describe LegoStockChecker::TruCheck do

  context 'when in stock' do
    describe '#in_stock?' do
      let(:html_file) { 'tru-is.html' }
      let(:price) { 74.99 }
      it_behaves_like "in stock"
    end
  end

  context 'when out of stock' do
    describe "#in_stock?" do
      let(:html_file) { 'tru-oos.html' }
      it_behaves_like "out of stock"
    end
  end

end
