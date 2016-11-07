class Thema < ApplicationRecord
  validates :first_name,:second_name, presence: true
end
