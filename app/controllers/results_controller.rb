class ResultsController < ApplicationController
  before_filter :require_admin

  def index
    @green_mode_results = Mode.green.map do |mode|
      result = User.max_miles(mode.name)
    end
    @most_green_trips_result = User.max_green_trips
    @most_green_shopping_trips_result = User.max_green_shopping_trips
  end
end
