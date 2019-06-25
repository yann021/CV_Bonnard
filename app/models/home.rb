class Home < ApplicationRecord
  belongs_to :user

  #ybo active storage
  has_one_attached :home_avatar
end
