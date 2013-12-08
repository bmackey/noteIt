class PostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy


  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Post created!"
      redirect_to home_path
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @post.destroy
    redirect_to home_path
  end

  private

    def post_params
      params.require(:post).permit(:content, :star_rating)
    end

    def correct_user
      @post = current_user.posts.where(id: params[:id]).first
      redirect_to root_url if @post.nil?
    end
end
