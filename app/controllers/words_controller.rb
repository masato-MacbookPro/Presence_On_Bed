class WordsController < ApplicationController
  def index
    @words = Word.all
  end

  def new
    @user = current_user
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    @word.save
    redirect_to user_words_path(current_user)
  end

  def edit
  end

  private
  def word_params
    params.require(:word).permit(:name, :user_id)
  end
end
