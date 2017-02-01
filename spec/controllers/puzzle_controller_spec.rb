require 'rails_helper'

RSpec.describe PuzzleController, type: :controller do

  describe "GET #all_guesses" do
    it "returns http success" do
      get :all_guesses
      expect(response).to have_http_status(:success)
    end
  end

end
