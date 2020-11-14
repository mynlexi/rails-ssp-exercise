class Exercise < ApplicationRecord
  has_and_belongs_to_many :collections
  CATEGORIES = ["Chest", "Legs", "Back", "Arms", "Core"]

  validates :category, presence: true, inclusion: {in: CATEGORIES}
  validates :name, presence: true, uniqueness: true
end
