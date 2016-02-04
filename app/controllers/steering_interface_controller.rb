class SteeringInterfaceController < ApplicationController

  def index

  end

  def steering
    @left = 0 | params[:left].to_i
    @right = 0 | params[:right].to_i
    @left_pwr = 0 | params[:left_pwr].to_i
    @right_pwr = 0 | params[:right_pwr].to_i

    if @left.between?(0, 1) and @right.between?(0, 1) and @left_pwr.between?(0, 100) and @right_pwr.between?(0, 100)
      @answer = {"status": "ok"}.to_json
      puts [@left, @right, @left_pwr, @right_pwr].join(", ")
      `~/aghacks/engines.py #{@left} #{@right} #{@left_pwr} #{@right_pwr}`
    else
      @answer = {"status": "fail"}.to_json
    end

  end
end
