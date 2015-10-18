require 'spec_helper'

RSpec.describe Maze do

  context 'when the source and the target are equal' do
    it '#initialize' do
      expect { Maze.new(2, 4) }.not_to raise_exception
      expect { Maze.new(2, 2) }.to raise_exception(ArgumentError, "The source and the target must be different.")
    end
  end
end