class Rover
  def initialize (coordinates, orientation, plateau)
    @coordinate = coordinates
    @orientation = orientation
    @plateau = plateau
  end

  def turn_left
    @orientation = case @orientation
    when 'N' then 'W'
    when 'E' then 'N'
    when 'S' then 'E'
    when 'W' then 'S'
    end
  end

  def turn_right
    @orientation = case @orientation
    when 'N' then 'E'
    when 'E' then 'S'
    when 'S' then 'W'
    when 'W' then 'N'
    end
  end

  def move
    case @orientation
    when 'N' then @coordinate[:y] += 1
    when 'E' then @coordinate[:x] += 1
    when 'S' then @coordinate[:y] -= 1
    when 'W' then @coordinate[:x] -= 1
    end
  end

  def parse(instructions)
    instructions.each_char do | instruction |
      case instruction
        when 'L'
          self.turn_left
        when 'R'
          self.turn_right
        when 'M'
          if @coordinate[:x] > @plateau[:width] ||
             @coordinate[:y] > @plateau[:height]
             return

          elsif @coordinate[:x] < 0 ||
                @coordinate[:y] < 0
            return
          else
          self.move
        end
      end
    end
  end

  def output
    "#{@coordinate[:x]} #{@coordinate[:y]} #{@orientation}"
  end
end
