class HomeController < ApplicationController
  def index
    right_now = Time.now

    @current_time = right_now.stamp_like("Feb 1st 09:00 pm")

    # Adjust message by time of day
    @greet_message = case right_now.hour
    when 5..11
      "GoOoooOoOoo Mernin!"
    when 12..15
      "Happy Afternoon!"
    when 16..19
      "Good evening..."
    when 20..23, 0..4
      "Good Night Sweetheart"
    end

  end
end
