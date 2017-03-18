require 'rails_helper'

RSpec.describe AttackMode, type: :model do
  before(:all) { @attack_mode = FactoryGirl.create(:attack_mode) }
  subject { @attack_mode }
  it { should respond_to(:name) }
  it { should respond_to(:key_name) }

  it '#name returns a string' do
    expect(@attack_mode.name).to be_a String
  end
  it '#key_name returns a string' do
    expect(@attack_mode.key_name).to be_a String
  end
end
