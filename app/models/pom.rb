include ActionView::Helpers::DateHelper 

class Pom < ActiveRecord::Base
  attr_accessible :body, :description, :duration1, :duration2, :reflection, :start_time

  def to_s
    "#{description} -- #{distance_of_time_in_words duration2 if duration2} -- #{start_time}"
  end
end
