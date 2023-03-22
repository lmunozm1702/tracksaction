class Group < ApplicationRecord
  belongs_to :user

  has_many :grouped_payments, dependent: :destroy
  has_many :payments, through: :grouped_payments
end
