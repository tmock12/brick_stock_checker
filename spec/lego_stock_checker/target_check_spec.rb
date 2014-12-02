require 'lego_stock_checker/target_check'
require 'shared_examples_for_lego_stock_checkers'

describe LegoStockChecker::TargetCheck do

  context 'when in stock' do
    describe '#in_stock?' do
      let(:html_file) { 'target-is.html' }
      it_behaves_like "in stock"
    end
  end

  context 'when out of stock' do
    describe "#in_stock?" do
      let(:html_file) { 'target-oos.html' }
      it_behaves_like "out of stock"
    end
  end

end
