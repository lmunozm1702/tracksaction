class Payment < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'

  has_many :grouped_payments, dependent: :destroy
  has_many :groups, through: :grouped_payments
end
