class Product < ApplicationRecord
  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader
  validates :name, presence:true
  validates :price,presence:true
  validates :quantity,presence:true
  validates :category,presence:true
  belongs_to :category
end
