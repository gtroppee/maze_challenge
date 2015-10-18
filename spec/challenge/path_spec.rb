require 'spec_helper'

RSpec.describe Path do

  before do
    @path = Path.new(2, 4, operation_history: Operations.list)
  end

  it '#next_paths' do
    paths = @path.next_paths
    expect(paths.size).to eq(3)
    paths.each do |path|
      last_operation = path.operation_history.last
      expect(Operations.list.include?(last_operation)).to be_truthy
    end
  end

  it '#target_reached?' do
    path = Path.new(2, 2)
    expect(path.target_reached?).to be_truthy
    
    path = Path.new(2, 4)
    expect(path.target_reached?).to be_falsy
  end

  it '#to_s' do
    expected_format = 'add_two -> multiply_by_two -> divide_by_two'
    expect(@path.to_s).to eq(expected_format)
  end
end