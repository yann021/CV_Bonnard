class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #ybo
  has_many :homes
  has_many :experiences
  has_many :trainings
  has_many :developements
  #ybo active storage
  has_one_attached :avatar

end
