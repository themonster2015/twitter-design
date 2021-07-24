class OpinionsController < ApplicationController
  before_action :authorize, only: [:index]

  def index
    @opinion = Opinion.new
    @opinions = Opinion.all.order('created_at DESC')
    @users = User.all_users(current_user.id).order("created_at DESC")
  end

  def create
    @opinion = Opinion.new(opinion_params)
    @opinion.AuthorId = current_user.id

    if @opinion.save
      flash[:notice] = 'Tweet added.'
      redirect_to root_path
    else
      flash[:alert] = "Couldn't create your tweet. Please try again!"
      render 'index'
    end
  end

  private

  def opinion_params
    params.require(:opinion).permit(:text)
  end
end
