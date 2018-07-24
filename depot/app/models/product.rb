class Product < ApplicationRecord
  validates :title, :description, :name, :email_address, presence: true
  validates :title, uniqueness: true
  validates :image_url, allow_blank:true, format:{
    with: %r{ \.(gif|jpg|png)\Z}i,
    message: 'must be a URL for gif, JPG or PNG image'
  }
end
