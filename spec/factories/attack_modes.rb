FactoryGirl.define do
  attack_mode_name = Faker::Lorem.word
  factory :attack_mode do
    name      { attack_mode_name }
    key_name  { attack_mode_name.parameterize }
  end
end
