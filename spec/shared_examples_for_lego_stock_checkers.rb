shared_examples "in stock" do
  stub_page
  it 'returns true'do
    expect(described_class.new.in_stock?).to be
  end
end

shared_examples "out of stock" do
  stub_page
  it 'returns false'do
    expect(described_class.new.in_stock?).not_to be
  end
end

def stub_page
  before do
    allow_any_instance_of(
      LegoStockChecker::BaseCheck
    ).to receive(:page).and_return(
      Nokogiri::HTML(File.read("spec/fixtures/#{html_file}"))
    )
  end
end
