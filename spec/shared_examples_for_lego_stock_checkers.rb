shared_examples "in stock" do
  stub_page
  let(:checked_site) { described_class.in_stock?('dummy.com') }
  it 'returns true for in stock'do
    expect(checked_site[:in_stock]).to be
    expect(checked_site[:price]).to eq(price)
  end
end

shared_examples "out of stock" do
  stub_page
  let(:checked_site) { described_class.in_stock?('dummy.com') }
  it 'returns false for in stock'do
    expect(checked_site[:in_stock]).not_to be
    expect(checked_site[:price]).to eq(nil)
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
