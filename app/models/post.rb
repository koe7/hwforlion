class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :commneters, through: :comments, source: :user
end
