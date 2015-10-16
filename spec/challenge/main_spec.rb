require 'spec_helper'

RSpec.describe Operation do
  it 'should be able to multiply any number by two' do
    expect(Operation.double(2)).to eq(4)
  end

  it 'should be able to divide any number by two' do
    expect(Operation.divide_by_two(2)).to eq(1)
  end

  it 'should be able to add two to any number' do
    expect(Operation.add_two(3)).to eq(5)
  end

  it 'should be able to go from source to target' do
    maze = Maze.new(2, 4)
    expect(maze.go).to eq(4)
  end
end