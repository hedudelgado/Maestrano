
describe Sale do 
	subject { described_class.new('name','country','city','total_invoiced')}

	it 'the class Sale has a name' do 
		expect(subject.name).to eq('name')
	end

	it 'the class Sale has a country' do 
		expect(subject.country).to eq('country')
	end

	it 'the class Sale has a city' do 
		expect(subject.city).to eq('city')
	end
	
	it 'the class Sale has a total_invoiced' do 
		expect(subject.sales).to eq('total_invoiced')
	end
end