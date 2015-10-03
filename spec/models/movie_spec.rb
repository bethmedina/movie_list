require 'rails_helper'

describe Movie do
  # Validations
  it 'must have a title' do
    expect(build(:movie, title: nil)).to_not be_valid
  end

  it 'must have a genre' do
    expect(build(:movie, genre: nil)).to_not be_valid
  end

  it 'must have a rating' do
    expect(build(:movie, rated: nil)).to_not be_valid
  end

  it 'must have stars' do
    expect(build(:movie, stars: nil)).to_not be_valid
  end

  it 'must have the right kind of rating' do
    expect(build(:movie, rated: 'nonsense')).to_not be_valid
  end

  it 'may have an empty descripton' do
    expect(build(:movie, description: nil)).to be_valid
  end

end
