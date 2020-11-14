class Trainingsplan < ApplicationRecord
  belongs_to :user
  has_many :exercises, through: :collection

  validates :goal, presence: true
end
