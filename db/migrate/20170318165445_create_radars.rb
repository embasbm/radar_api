class CreateRadars < ActiveRecord::Migration[5.0]
  def change
    create_table :radars do |t|

      t.timestamps
    end
  end
end
