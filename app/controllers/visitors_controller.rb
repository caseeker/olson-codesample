class VisitorsController < ApplicationController

  def reverse
    if params[:reverse_string].empty?
      render :reverse_home
    else
      @reverse_string = params[:reverse_string].reverse
      render json: @reverse_string
    end
  end
end
