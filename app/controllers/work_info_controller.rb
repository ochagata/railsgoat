# frozen_string_literal: true
class WorkInfoController < ApplicationController
  def index
    @user = current_user
    redirect_to root_url unless current_user.id == params[:user_id].to_i
    if !(@user)
      flash[:error] = "Sorry, something went wrong"
      redirect_to home_dashboard_index_path
    end
  end

end
