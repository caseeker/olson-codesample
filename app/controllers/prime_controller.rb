class PrimeController < ApplicationController
  def prime
    require 'prime'
    if params[:prime_input].nil? or params[:prime_input].empty?
      render :prime_home
    else
      prime_input = params[:prime_input].to_i
      @prime_output = Prime.prime?(prime_input).to_s
      respond_to do |format|
        format.json { render json: @prime_output }
        format.html { render :prime_home }
        format.js
      end
    end
  end
end