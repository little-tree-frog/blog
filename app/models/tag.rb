class Tag < ApplicationRecord
  include PgSearch::Model
  multisearchable against: :tag

  has_many :post_tags, dependent: :destroy
  has_many :posts, through: :post_tags
end
