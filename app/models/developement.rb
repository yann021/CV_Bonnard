class Developement < ApplicationRecord
  belongs_to :user, optional: true
  
  #ybo active storage
  has_one_attached :developement_avatar
end
  