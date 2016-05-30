require 'rails_helper.rb'

describe EmployeeLocation do 
	subject { described_class.new("latitude","longitude","description","name")}

	it 'the class location has a name' do 
		expect(subject.name).to eq('name')
	end

	it 'the class location has a latitude' do 
		expect(subject.latitude).to eq('latitude')
	end

	it 'the class location has a longitude' do 
		expect(subject.longitude).to eq('longitude')
	end
	
	it 'the class location has a description' do 
		expect(subject.description).to eq('description')
	end
end