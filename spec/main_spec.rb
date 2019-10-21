describe Rover, :behaviour do
  let(:upper_right) {
    { width: 5, height: 5 }
  }

  context 'when fist rover receive commands' do
    let(:coordinates) { { x: 1, y: 2 } }
    let(:rover) { Rover.new(coordinates, 'N', upper_right) }

    it "command LMLMLMLMM" do
      rover.parse('LMLMLMLMM')
      expect(rover.output).to eq('1 3 N')
    end
  end

  context 'when second rover receive commands' do
    let(:coordinates) { { x: 3, y: 3 } }
    let(:rover) { Rover.new(coordinates, 'E', upper_right) }

    it "command MMRMMRMRRM" do
      rover.parse('MMRMMRMRRM')
      expect(rover.output).to eq('5 1 E')
    end
  end
end
