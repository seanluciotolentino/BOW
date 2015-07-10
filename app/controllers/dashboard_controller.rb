class DashboardController < ApplicationController
  def index
  	@stats = Statistic.new
  	@most_commented = Article.all.sort_by { |article| article.comments.count }.last
  	@most_followed = Article.all.sort_by { |article| article.followers.count }.last
  end
end
