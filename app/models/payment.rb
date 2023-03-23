class Payment < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'

  has_many :grouped_payments, dependent: :destroy
  has_many :groups, through: :grouped_payments

  accepts_nested_attributes_for :grouped_payments,
                                allow_destroy: true

  validates :amount, presence: true, numericality: { only_integer: true }
  validates :name, presence: true
end
