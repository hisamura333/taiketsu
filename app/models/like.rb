class Like < ApplicationRecord
  belongs_to :review, counter_cache: :likes_count
  attr_accessor :index
end
