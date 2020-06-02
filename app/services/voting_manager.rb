class VotingManager
  include Rails.application.routes.url_helpers

  def initialize(option)
    @option = option.to_i
    @options = Option.all.count
  end

  def execute
    if @option == 0
      new_vote_path(option: 1)
    elsif @option > @options
      complete_path()
    else 
      new_vote_path(option: @option)
    end
  end
end