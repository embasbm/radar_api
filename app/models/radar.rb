class Radar < ApplicationRecord
  attr_accessor :positions

  def self.populate_radar(radar)
    new_radar = Radar.create(positions: [])
    radar.each do |p|
      pos = Position.create(
        dim_x: p['position']['x'].to_i, dim_y: p['position']['y'].to_i, targets: [])
      p['targets'].each do |t|
        new_target = Target.create(
          type_name: t['type'],
          damage: t['damage'].to_i || 0
        )
        pos.targets << new_target
      end
      pos.save
      new_radar.positions << pos
    end
    new_radar.save
  end
end
