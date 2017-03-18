require 'rails_helper'

RSpec.describe Position, type: :model do
  before(:all) do
    @position = Position.new(
      dim_x: 20,
      dim_y: 30,
      targets: []
    )
  end
  subject { @position }
  it { should respond_to(:dim_x) }
  it { should respond_to(:dim_y) }
  it { should respond_to(:targets) }

  it '#dim_x returns a number' do
    expect(@position.dim_x).to be_a Integer
  end
  it '#dim_y returns a number' do
    expect(@position.dim_y).to be_a Integer
  end
  it '#targets returns an array' do
    expect(@position.targets).to be_an Array
  end
end
