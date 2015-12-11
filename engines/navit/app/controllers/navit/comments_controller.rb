require_dependency "navit/application_controller"

module Navit
  class CommentsController < ApplicationController

    def new
      @comment = Comment.new(post_id: params[:post])
      render :new, locals: {post: Post.find(params[:post])}
    end

    def create
      @comment = Comment.new(comment_params)
      if @comment.save
        redirect_to Post.find(comment_params[:post_id])
      else
        render :new
      end
    end

    private

    def comment_params
      params[:comment][:author_id] = current_user.id
      params[:comment].permit(:title, :body, :post_id, :author_id)
    end
  end
end
