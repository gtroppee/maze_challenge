require 'spec_helper'

RSpec.describe Operations do
  it '#multiply_by_two' do
    expect(Operations.multiply_by_two(2)).to eq(4)
  end

  it '#divide_by_two' do
    expect(Operations.divide_by_two(2)).to eq(1)
  end

  it '#add_two' do
    expect(Operations.add_two(3)).to eq(5)
  end
end