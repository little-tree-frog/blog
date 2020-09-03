class Post < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:name, :body]

  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :plant_tags
end
