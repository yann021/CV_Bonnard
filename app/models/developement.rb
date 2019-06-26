class Developpement < ApplicationRecord
  belongs_to :user, optional: true
  
  #ybo active storage
  has_one_attached :training_avatar
end
  