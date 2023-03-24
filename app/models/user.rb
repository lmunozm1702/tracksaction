class User < ApplicationRecord
  has_many :payments, class_name: 'Payment', foreign_key: 'author_id'
  has_many :groups
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  validates :name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false
  validates :password, presence: true, allow_blank: false
end
