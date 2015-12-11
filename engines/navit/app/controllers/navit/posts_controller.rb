module Navit
  class PostsController < ApplicationController

    def index;end

    def new
      @post = Post.new(channel_id: params[:channel])
    end

    def create
      @post = Post.create(post_params)

      if @post
        redirect_to @post
      else
        render :new
      end
    end

    def show
      @post = Post.find(params[:id])
      render :show, locals: {comments: @post.comments}
    end

    private

    def post_params
      params[:post][:author_id] = current_user.id
      params[:post].permit(:title, :description, :channel_id, :author_id)
    end
  end
end
