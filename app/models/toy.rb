class Toy < ApplicationRecord
   mount_uploader :photo, PhotoUploader

   has_many :orders

   validates :name, presence: true
   validates :description, presence: true
   validates :url_name, presence: true, uniqueness: true
   validates :price, presence: true
end
