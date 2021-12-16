class HomeController < ApplicationController
  def index
    @words = Word.where(user_id: current_user.id) if user_signed_in?
    redirect_to(root_path) unless user_signed_in?
  end

  def admin
    users = User.all
    @total_users = users.count.to_s(:delimited, delimiter: ',')
  end
end
