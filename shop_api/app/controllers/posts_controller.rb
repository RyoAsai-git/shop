class PostsController < ApplicationController
  def index
    render json: Post.all, methods: [:image_url]
  end

  def create
    post = Post.new(post_params)
    if post.save
      render json: post, methods: [:image_url]
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