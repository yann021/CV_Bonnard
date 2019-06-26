class Experience < ApplicationRecord
  belongs_to :user, optional: true

  #ybo active storage
  has_one_attached :experience_avatar
end
