class Casa < ApplicationRecord
  belongs_to :user
  has_many :casa_facilities
  has_many :facilities, through: :casa_facilities
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  has_many :shared_rooms
  has_many :private_rooms

end
