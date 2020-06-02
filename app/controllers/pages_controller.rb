class PagesController < ApplicationController
  def survey
    option_route = VotingManager.new(params[:option]).execute
    redirect_to option_route
  end

  def complete; end

  def results
    @options = Option.includes(:votes).left_joins(:like_votes)
    .group(:id)
    .order('COUNT(votes.id) DESC')
  end
end
