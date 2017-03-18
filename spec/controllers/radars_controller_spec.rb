require 'rails_helper'

RSpec.describe RadarsController, type: :controller do
  describe "POST find_position" do
    let(:petition) { JSON.parse(file_fixture("example.json").read) }
     it "return 200" do
       post :find_position, params: petition
       expect(response.status).to eq(200)
     end
   end
end
