require 'rails_helper'

RSpec.describe User, type: :user do
	it "Userデータが正しく保存される" do
		@user = User.new
		@user.name = "あああ"
		@user.email = "a@a"
		@user.password = "aaaa1111"
		expect(@user).to be_valid
	end

	it "パスワード８文字以下エラーになる" do
		@user = User.new
		@user.name = "あああ"
		@user.email = "a@a"
		@user.password = "aa11"
		@user.valid?
		expect(@user.errors[:password]).to include("is too short (minimum is 6 characters)")
	end
end