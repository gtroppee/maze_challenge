require 'spec_helper'

RSpec.describe Generation do

  before do
    @paths = [
      Path.new(2,6), 
      Path.new(1,6), 
      Path.new(4,6)
    ]
    @generation = Generation.new(@paths)
  end

  it '#next' do
    expect(@generation.paths.size).to eq(3)
    next_generation = @generation.next
    expect(next_generation.paths.size).to eq(9)
  end

  it '#target_reached?' do
    expect(@generation.target_reached?).to be_falsy
    @generation.paths << Path.new(6,6)
    expect(@generation.target_reached?).to be_truthy
  end

  it '#successful_paths' do
    expect(@generation.successful_paths.size).to eq(0)
    @generation.paths << Path.new(6,6)
    @generation.paths << Path.new(6,6)
    expect(@generation.successful_paths.size).to eq(2)
  end

  it '#to_s' do
    @generation.paths << Path.new(6, 6, operation_history: Operations.list)
    expected_format = "Maze solved in 1 generations, and the quickest routes are \n- add_two -> multiply_by_two -> divide_by_two \n"
    expect(@generation.to_s).to eq(expected_format)
  end
end