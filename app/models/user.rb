class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  validates :name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false
  validates :password, presence: true, allow_blank: false
end
