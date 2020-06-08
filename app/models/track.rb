class Track < ApplicationRecord
  validates :name, :description, :level, :start_address, :end_address, :time_to_complete, presence: true
  has_many :chats, dependent: :destroy
  has_many :races, dependent: :destroy
end
