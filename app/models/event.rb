class Event < ApplicationRecord
  has_many :attendances
  has_many :participants, source: :user, through: :attendances
  belongs_to :organizer, class_name: 'User'
  validates :title, :start_date, :location, presence: true
end
