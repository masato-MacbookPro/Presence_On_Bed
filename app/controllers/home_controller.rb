class HomeController < ApplicationController
  def index
   @words = Word.where(user_id: current_user.id) 
  end
end
