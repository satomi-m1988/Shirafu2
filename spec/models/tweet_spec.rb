require 'rails_helper'

RSpec.describe Tweet, type: :model do
	context "データが正しく保存される" do
		before do
			user = User.create(name: "あああ", email: "a@a", password: "aaa111", adult: "1")
			@tweet = Tweet.new
			@tweet.body = "こんにちは"
			@tweet.user_id = user.id
			@tweet.save
		end
		it "全て入力してるので保存される" do
			expect(@tweet).to be_valid
		end
	end

	context "ツイートbodyがある時投稿できる" do
		before do
			user = User.create(name: "いいい", email: "b@b", password: "bbbb1111")
			@tweet = Tweet.new
			@tweet.body = "hogehoge"
			@tweet.user_id = user.id
			@tweet.save
		end
		it "ツイートbodyに内容があるので保存（投稿）される" do
			expect(@tweet).to be_valid
		end

	end

	context "ツイートbody空欄だとエラーになる" do
		before do
			user = User.create(name: "いいい", email: "b@b", password: "bbbb1111")
			@tweet = Tweet.new
		end
		it "ツイートbody空欄だとエラーになる" do
			@tweet.body = nil
			@tweet.valid?
			expect(@tweet.errors[:body]).to include("can't be blank")
		end
	end
end