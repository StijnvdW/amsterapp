class FeedController < ApplicationController
  def show
  	@articlesToday = Article.where("DATE(created_at) = DATE(?)",Time.now)
  	@articlesYesterday = Article.where("DATE(created_at) = DATE(?)",Time.now - 1.day)
  	@articlesDayBeforeYesterday = Article.where("DATE(created_at) = DATE(?)",Time.now - 2.day)
  end
end
