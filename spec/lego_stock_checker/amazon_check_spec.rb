require 'lego_stock_checker/amazon_check'
require 'shared_examples_for_lego_stock_checkers'

describe LegoStockChecker::AmazonCheck do

  context 'when in stock' do
    describe '#in_stock?' do
      let(:html_file) { 'amazon-is.html' }
      it_behaves_like "in stock"
    end
  end

  context 'when out of stock' do
    describe "#in_stock?" do
      let(:html_file) { 'amazon-oos.html' }
      it_behaves_like "out of stock"
    end
  end

end
