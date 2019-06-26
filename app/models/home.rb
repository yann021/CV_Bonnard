class Home < ApplicationRecord
  belongs_to :user, optional: true

  #ybo active storage
  has_one_attached :home_avatar
end
