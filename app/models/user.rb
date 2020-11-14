class User < ApplicationRecord
  has_many :trainingsplans
  has_many :collections, through: :trainingsplans
  validates :name, presence: true, uniqueness: true
end
