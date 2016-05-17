
describe TopSale do 
	subject { described_class.new('name','total_invoiced')}

	it 'the class Top_sale has a name' do 
		expect(subject.name).to eq('name')
	end

	it 'the class Top_sale has a total_invoiced' do 
		expect(subject.sales).to eq('total_invoiced')
	end
end