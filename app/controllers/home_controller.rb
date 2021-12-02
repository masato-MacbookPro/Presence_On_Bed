class HomeController < ApplicationController
  def index
   @words = Word.all 
  end
end
