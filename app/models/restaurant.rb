class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :name, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
end
