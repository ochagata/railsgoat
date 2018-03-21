# frozen_string_literal: true
class PaidTimeOffController < ApplicationController

  def index
    user = User.where("id = #{params[:user_id]}").first
    user ||= current_user
    @pto = user.paid_time_off
    @schedule = Schedule.new
  end
end
