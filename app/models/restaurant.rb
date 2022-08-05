class Restaurant < ApplicationRecord
  ALLOWED_TYPES = %w[chinese italian japanese french belgian].freeze

  has_many :reviews, dependent: :destroy
  validates :name, presence: true, uniqueness: { scope: :address, message: 'and address have already been entered.' }
  validates :address, presence: true
  validates :category, inclusion: { in: ALLOWED_TYPES, message: "%{value} is not part of the list" }
  # validates :phone_number, format: { with: /\A\+(?:[0-9]●?){6,14}[0-9]\z/, message: 'Should start with a + with the zone identifier, then the phone number without signs.' }
end
