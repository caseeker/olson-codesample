class ReverseController < ApplicationController
  def reverse
    if params[:reverse_string].nil? or params[:reverse_string].empty?
      render :reverse_home
    else
      @reverse_string = params[:reverse_string].reverse
      respond_to do |format|
        format.json { render json: @reverse_string }
        format.html { render :reverse_home }
        format.js
      end
    end
  end
end