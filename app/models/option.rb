class Option < ApplicationRecord
  has_many :votes
  has_many :like_votes, -> { where(like: true) }, class_name: 'Vote'
  
  def yes_votes_count
    votes.where(like: true).count
  end

  def no_votes_count
    votes.where(like: false).count
  end

end
