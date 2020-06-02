class VotesController < ApplicationController
  def new
    @vote = Vote.new
    @option = Option.find(params[:option])
  end

  def create
    @vote = Vote.new(vote_params)
    @outcome = params[:outcome]
    puts @outcome
    @option = @vote.option.id + 1
    puts @option
    if @vote.save
      if @outcome == "1"
        @vote.update(like: true)
      else
        @vote.update(like: false)
      end
      redirect_to VotingManager.new(@option).execute
    else
      render new
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:option_id)
  end
end
