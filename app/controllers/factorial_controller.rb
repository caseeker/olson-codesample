class FactorialController < ApplicationController
  def factorial
    if params[:factorial_input].nil? or params[:factorial_input].empty?
      render :factorial_home
    else
      factorial_input = params[:factorial_input].to_i

      @factorial_output = (1..factorial_input).inject(:*) || 1
      respond_to do |format|
        format.json { render json: @factorial_output }
        format.html { render :factorial_home }
        format.js
      end
    end
  end
end