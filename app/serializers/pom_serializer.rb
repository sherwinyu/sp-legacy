class PomSerializer < ActiveModel::Serializer
  attributes :id, :description, :body, :start_time, :duration1, :duration2, :reflection
end
