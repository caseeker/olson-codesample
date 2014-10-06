class RunLengthController < ApplicationController
  def run_length
    if params[:run_length_input].nil? or params[:run_length_input].empty?
      render :run_length_home
    else
      @run_length_output = encode(params[:run_length_input])
      respond_to do |format|
        format.json { render json: @run_length_output }
        format.html { render :run_length_home }
        format.js
      end
    end
  end

  private
  def encode(string)
    string.scan(/(.)(\1*)/).collect do |char, repeat|
      [1 + repeat.length, char]
    end.join
  end
end