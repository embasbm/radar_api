class CreateAttackModes < ActiveRecord::Migration[5.0]
  def change
    create_table :attack_modes do |t|
      t.string :name
      t.string :key_name

      t.timestamps
    end
  end
end
