require './rover'
require 'pry'

upper_right = {
  width: 5,
  height: 5
}

inputs = [
  {
    coordinates: {
      x: 1,
      y: 2
    },
    orientation: 'N',
    instruction: 'LMLMLMLMM'
  }, {
    coordinates: {
      x: 3,
      y: 3
    },
    orientation: 'E',
    instruction: 'MMRMMRMRRM'
  }
]

inputs.each do | input |
  rover = Rover.new(
    input[:coordinates],
    input[:orientation],
    upper_right
  )

  rover.parse(input[:instruction])
  puts rover.output
end
