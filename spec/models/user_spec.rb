# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  password_digest :string
#  session_token   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:password_digest)}
  it {should validate_presence_of(:session_token)}
  it {should validate_length_of(:password).is_at_least(6)}
  it {should have_many(:goals)}


  let(:bob) { User.create(username: "bob", password: "password")}

  # describe "User::find_by_credentials" do
  #   expect(User.find_by_credentials("bob", "password")).to eq(bob)
  # end

  describe "User#password=(password)" do
    it "sets password" do
      bob.password = "123456"
      expect(bob.password).to eq("123456")
    end
  end

  describe "is_password?(password)" do
    it "checks password" do
      expect(bob.is_password?("password")).to be_truthy

    end
  end

  describe "reset_session_token!" do
    it "resets session token" do
      old_session_token = bob.session_token
      bob.reset_session_token!
      expect(bob.session_token).to_not eq(old_session_token)

    end
  end

end
