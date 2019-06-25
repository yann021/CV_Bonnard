class Experience < ApplicationRecord
  belongs_to :user

  #ybo active storage
  has_one_attached :experience_avatar
end
