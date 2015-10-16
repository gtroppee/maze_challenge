require_relative 'challenge/operations'
require_relative 'challenge/maze'
require_relative 'challenge/path'
require_relative 'challenge/generation'
require_relative 'challenge/renderer'

Maze.new(source: 2, target: 500).solve