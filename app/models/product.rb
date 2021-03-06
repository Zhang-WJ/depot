class Product < ApplicationRecord
    validates :title, :description, :image_url, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :title, uniqueness: true
    validates :image_url, allow_blank: true, format: {
        with: %r{\.(gif|jpg|png)\Z}i,
        message: 'must be a URL for GIF, JPEG or PNG image'
    }
    validates :title, allow_blank: true, length: {minimum: 10, too_short: "%{count} is the minimum characters"}
end
