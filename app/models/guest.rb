class Guest < ApplicationRecord
  validates :prenom, presence: true
  validates :nom, presence: true
  validates :email, presence: true
  validates_presence_of :nombre, if: :presence?
end
