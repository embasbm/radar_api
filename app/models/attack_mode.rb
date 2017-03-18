class AttackMode < ApplicationRecord
  def self.save_data(modes)
    modes.each do |mode|
      find_or_create_by!(name: mode.titleize, key_name: mode)
    end
  end
end
