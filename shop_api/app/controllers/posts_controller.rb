# class PostsController < ApplicationController
#   def index
#     render json: Post.all, methods: [:image_url]  # ここを変更
#   end

#   def create
#     post = Post.new(post_params)
#     if post.save
#       render json: post, methods: [:image_url]  # ここを変更
#     else
#       render json: post.errors, status: 422
#     end
#   end

#   def destroy
#     post = Post.find(params[:id])
#     post.destroy!
#     render json: post
#   end

#   private

#   def post_params
#     params.permit(:title, :image)
#   end
# end

class PostsController < ApplicationController
  def index
    # post = Post.all
    # render json: post, status: 200
    render json: Post.all, methods: [:image_url]
  end

  # def create
  #   post = Post.new(post_params)
  #   # post = image_url(post)
  #   if post.save
  #     render json: post
  #   else
  #     render json: post.errors, status: 422
  #   end
  # end
  def create
    post = Post.new(post_params)
    if post.save
      render json: post, methods: [:image_url]  # ここを変更
    else
      render json: post.errors, status: 422
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy!
    render json: post
  end

  private

  def post_params
    params.permit(:title, :image)
  end
end