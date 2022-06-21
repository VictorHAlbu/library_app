class Book < ApplicationRecord
  include Utils::Filter
  
  belongs_to :user
  has_many :reviews
  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true

end
