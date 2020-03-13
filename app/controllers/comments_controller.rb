# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    @library = Library.find(params[:name])
    @comment = @library.comments.create(comment_params)
    redirect_to library_path(@library)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
