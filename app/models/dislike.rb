class Dislike < ApplicationRecord
  belongs_to :review, counter_cache: :dislikes_count
  attr_accessor :index
end
