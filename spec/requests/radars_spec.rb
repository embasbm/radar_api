# spec/requests/todos_spec.rb
require 'rails_helper'

RSpec.describe 'Radar API', type: :request do
  describe 'POST /radar' do

    context 'We keep AttackMode into DB' do
      let(:petition) { JSON.parse(file_fixture("example.json").read) }
      let(:request) { post '/radar', params: petition }
      it 'AttackMode' do
        expect { request }.to change{ AttackMode.count }.by(1)
      end
      it 'Radar' do
        expect { request }.to change{ Radar.count }.by(1)
      end
      it 'Position' do
        expect { request }.to change{ Position.count }.by(2)
      end
      it 'Target' do
        expect { request }.to change{ Target.count }.by(4)
      end
    end

  end
end
