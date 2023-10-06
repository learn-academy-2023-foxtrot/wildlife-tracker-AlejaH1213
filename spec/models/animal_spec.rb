require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'is not valid without a common name' do
    fox = Animal.create(
      common_name: 'Red Fox',
      scientific_binomial: 'Vulpes vulpes'
    )
    expect(fox.errors[:common_name]).to_not be_empty
  end
  it 'is not valid without a scientific binomial name' do
    fox = Animal.create(
      common_name: 'Red Fox',
      scientific_binomial: 'Vulpes vulpes'
    )
    expect(fox.errors[:scientific_binomial]).to_not be_empty
  end
end