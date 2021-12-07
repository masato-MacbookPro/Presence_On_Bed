class HomeController < ApplicationController
  def index
    if user_signed_in?
      @words = Word.where(user_id: current_user.id) 
    end
    redirect_to(root_path) unless user_signed_in?
  end

  def admin
    users = User.all
    # @total_users = users.count.to_s(:delimited, delimiter: ',')
    @total_users = 231.to_s(:delimited, delimiter: ',')
  end
end
