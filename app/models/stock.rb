# Stock model
class Stock < ApplicationRecord
  validates :ticker, presence: true
  validates :ticker, format: {without: /\s/}
  belongs_to :user
end
