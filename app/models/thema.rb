class Thema < ApplicationRecord
  validates :first_name,:second_name, presence: true
  has_many :reviews

  def previous
    Thema.where("id < ?", self.id).order("id DESC").first
  end

  def next
    Thema.where("id > ?", self.id).order("id ASC").first

  end
end
