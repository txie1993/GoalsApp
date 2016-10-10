require 'rails_helper'
require 'byebug'

RSpec.describe GoalsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    subject(:bob) {User.create(username:"bob", password: "password")}
    let(:bob_goal) {Goal.new(title: "build a house", private: true, finished: true)}
    it "returns http success" do
      bob_goal.user_id = bob.id
      bob_goal.save!
      get :show, id: bob_goal.id
      expect(response).to have_http_status(:success)
    end
  end

end
