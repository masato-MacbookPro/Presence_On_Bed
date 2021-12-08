class WordsController < ApplicationController
  def index
    user = User.find(params[:user_id])
    @words = Word.where(user_id: current_user.id)
    redirect_to(root_path) unless current_user.id == user.id
  end

  def new
    user = User.find(params[:user_id])
    @user = current_user
    @word = Word.new
    redirect_to(root_path) unless current_user.id == user.id
  end

  def create
    if Word.where('user_id = ? and name = ?', params[:user_id], params[:word]["name"]).exists? == true
      redirect_to new_user_word_path(current_user), alert: 'すでに登録済みです'
    else
      @word = Word.new(user_id: params[:user_id], name: params[:word]["name"])
      @word.save
      redirect_to user_words_path(current_user)
    end
  end

  def edit
  end

  def destroy
    word = Word.find(params[:id])
    word.destroy
    redirect_to user_words_path(current_user)
  end
end
