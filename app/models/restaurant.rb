# frozen_string_literal: true

class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
  has_many :reviews, dependent: :destroy
end
