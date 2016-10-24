class CommentsController < ApplicationController
  skip_before_action  :verify_authenticity_token

  def index
    respond_with Comment.where(index_comments_params)
  end

  def create
    comments = Comment.create(comments_params)
    if comments
      render json: { comments: comments }
    else
      render json: { error: 'something went wrong' }
    end
  end

  private
    def comments_params
      params[:comments].map{ |comment| 
        comment.permit(:date, :attendance, :student_comment, :page_id, :student_id)
      }
    end

    def index_comments_params
      params[:comment].try(:permit, :date, :attendance, :page_id, :student_id)
    end
end