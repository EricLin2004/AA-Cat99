class Cat < ActiveRecord::Base
  attr_accessible :location, :name, :image, :price
  has_attached_file :image
  has_many :cat_rental_requests
end
