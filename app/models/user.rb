# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :attendances, dependent: :destroy
  belongs_to :role
  has_many :daily_statuses
  has_one_attached :image, dependent: :destroy
  has_many :leafs
end
