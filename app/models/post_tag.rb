class PostTag < ApplicationRecord
  include PgSearch::Model
  
  belongs_to :post
  belongs_to :tag
end
