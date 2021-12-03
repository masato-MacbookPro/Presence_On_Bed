class HomeController < ApplicationController
  def index
    if user_signed_in?
      @words = Word.where(user_id: current_user.id) 
    end
  end
end
