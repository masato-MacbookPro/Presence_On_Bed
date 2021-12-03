class WordsController < ApplicationController
  def index
    @words = Word.where(user_id: current_user.id)
  end

  def new
    @user = current_user
    @word = Word.new
  end

  def create
    @word = Word.new(name: params[:word]["name"], user_id: params[:user_id])
    @word.save
    redirect_to user_words_path(current_user)
  end

  def edit
  end

  # private
  # def word_params
  #   params.require(:word).permit(:name, :user_id)
  # end
end
