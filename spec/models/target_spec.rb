require 'rails_helper'

RSpec.describe Target, type: :model do
  before do
    @target = Target.new(
      type_name: Faker::Lorem.word,
      damage: Faker::Number.number(2).to_i
    )
  end
  subject { @target }
  it { should respond_to(:type_name) }
  it { should respond_to(:damage) }

  it '#type_name returns a string' do
    expect(@target.type_name).to be_a String
  end
  it '#damage returns a number' do
    expect(@target.damage).to be_a Integer
  end

end
