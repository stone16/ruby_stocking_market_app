# Stock model
class Stock < ApplicationRecord
  validate :ticker, presence: true
  validate :ticker, format: {without: /\s/}
  belongs_to :user
end
