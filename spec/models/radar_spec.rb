require 'rails_helper'

RSpec.describe Radar, type: :model do
  before(:all) do
    @radar = Radar.new(
      positions: []
    )
  end
  subject { @radar }
  it { should respond_to(:positions) }

  it '#targets returns a number' do
    expect(@radar.positions).to be_an Array
  end

end
