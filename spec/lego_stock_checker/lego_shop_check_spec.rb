require 'lego_stock_checker/lego_shop_check'
require 'shared_examples_for_lego_stock_checkers'

describe LegoStockChecker::LegoShopCheck do

  context 'when in stock' do
    describe '#in_stock?' do
      let(:price) { 399.99 }
      let(:html_file) { 'lego-shop-is.html' }
      it_behaves_like "in stock"
    end
  end

  context 'when call to check stock' do
    describe "#in_stock?" do
      let(:html_file) { 'lego-shop-call-to-check.html' }
      it_behaves_like "out of stock"
    end
  end

  context 'when out of stock' do
    describe "#in_stock?" do
      let(:html_file) { 'lego-shop-oos.html' }
      it_behaves_like "out of stock"
    end
  end

end
