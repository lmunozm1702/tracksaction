class Group < ApplicationRecord
  belongs_to :user

  has_many :grouped_payments, dependent: :destroy
  has_many :payments, through: :grouped_payments

  validates :name, presence: true, allow_blank: false
  validates :icon, presence: true, allow_blank: false
end
