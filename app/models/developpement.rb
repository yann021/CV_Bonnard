class Developpement < ApplicationRecord
  belongs_to :user

  #ybo active storage
  has_one_attached :training_avatar
end
