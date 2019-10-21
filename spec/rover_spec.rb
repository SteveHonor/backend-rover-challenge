describe Rover do
  let(:upper_right) { { width: 5, height: 5 } }
  let(:coordinates) { { x: 3, y: 3 } }

  describe '#turn_left' do
    before { rover.turn_left }

    context 'when it position in north' do
      let(:rover) { Rover.new(coordinates, 'N', upper_right) }

      it 'orientation W' do
        expect(rover.output).to eq('3 3 W')
      end
    end

    context 'when it position in west' do
      let(:rover) { Rover.new(coordinates, 'W', upper_right) }

      it 'orientation S' do
        expect(rover.output).to eq('3 3 S')
      end
    end

    context 'when it position in east' do
      let(:rover) { Rover.new(coordinates, 'E', upper_right) }

      it 'orientation N' do
        expect(rover.output).to eq('3 3 N')
      end
    end

    context 'when it position in south' do
      let(:rover) { Rover.new(coordinates, 'S', upper_right) }

      it 'orientation E' do
        expect(rover.output).to eq('3 3 E')
      end
    end
  end

  describe '#turn_right' do
    before { rover.turn_right }

    context 'when it position in north' do
      let(:rover) { Rover.new(coordinates, 'N', upper_right) }

      it 'orientation E' do
        expect(rover.output).to eq('3 3 E')
      end
    end

    context 'when it position in west' do
      let(:rover) { Rover.new(coordinates, 'W', upper_right) }

      it 'orientation N' do
        expect(rover.output).to eq('3 3 N')
      end
    end

    context 'when it position in east' do
      let(:rover) { Rover.new(coordinates, 'E', upper_right) }

      it 'orientation S' do
        expect(rover.output).to eq('3 3 S')
      end
    end

    context 'when it position in south' do
      let(:rover) { Rover.new(coordinates, 'S', upper_right) }

      it 'orientation W' do
        expect(rover.output).to eq('3 3 W')
      end
    end
  end

  describe '#move' do
    before { rover.move }

    context 'when it position in north' do
      let(:rover) { Rover.new(coordinates, 'N', upper_right) }

      it 'orientation N' do
        expect(rover.output).to eq('3 4 N')
      end
    end

    context 'when it position in west' do
      let(:rover) { Rover.new(coordinates, 'W', upper_right) }

      it 'orientation W' do
        expect(rover.output).to eq('2 3 W')
      end
    end

    context 'when it position in east' do
      let(:rover) { Rover.new(coordinates, 'E', upper_right) }

      it 'orientation E' do
        expect(rover.output).to eq('4 3 E')
      end
    end

    context 'when it position in south' do
      let(:rover) { Rover.new(coordinates, 'S', upper_right) }

      it 'orientation S' do
        expect(rover.output).to eq('3 2 S')
      end
    end
  end
end
