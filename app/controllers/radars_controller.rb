class RadarsController < ApplicationController
  before_action :convert_params
  before_action :keed_data, only: [:find_position]

  def find_position
    render json: {"position" => {"x" => "0","y" => "40"},"targets":["T-X","T1"]}
  end

  private
  def convert_params
    @petition = params.to_unsafe_hash
  end

  def keed_data
    AttackMode.save_data(@petition['attack-mode'])
    @radar = Radar.populate_radar(@petition['radar'])
  end
end
