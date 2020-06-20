class EndpointsController < ApplicationController
	def categories
		render json: CategorySerializer.new(Category.all)
	end

	def categories_show
		render json: CategorySerializer.new(Category.find(params[:id]))
	end

	def users
		render json: UserSerializer.new(User.all)
	end

	def posts
		per_page = params.fetch(:per_page, 10)
		@posts = Post.joins(:category)
								 .includes(:category, comments: :user)
								 .order(created_at: :desc)
								 .limit(per_page)

		render json: PostSerializer.new(@posts, {
			include: [:category, :comments, :'comments.user']
		})
	end

	def posts_ams
		per_page = params.fetch(:per_page, 10)
		@posts = Post.joins(:category)
								 .includes(:category, comments: :user)
								 .order(created_at: :desc)
								 .limit(per_page)

		render json: @posts,
					 each_serializer: PostAmsSerializer,
					 include: 'category,comments,comments.user'
	end
end