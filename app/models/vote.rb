class Vote < ApplicationRecord
  belongs_to :option

  scope :like_votes, -> { where(like: true) }
  scope :dislike_votes, -> { where(like: false) }
end
