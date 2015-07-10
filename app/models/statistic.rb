class Statistic < ActiveRecord::Base
	def total_articles
		Article.count
	end

	def total_follows
		Follow.count
	end

	def total_comments
		Comment.count
	end

	def follows_by_article(article)
		Follow.where(followable_id: article.id)
	end

	def comments_by_article(article)
		Comment.where(commentable_id: article.id)
	end
end
