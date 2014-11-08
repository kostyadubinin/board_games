class GamesSorter
  attr_reader :sort_by, :sort_dir

  def initialize(options)
    @sort_by  = options[:sort_by]
    @sort_dir = options[:sort_dir] == "desc" ? :desc : :asc
  end

  def sort(scope)
    case sort_by
    when "players" then
      scope.order(players_min: sort_dir, players_max: sort_dir)
    when "playing_time" then
      scope.order(playing_time_min: sort_dir, playing_time_max: sort_dir)
    else
      scope
    end
  end
end
