class GameDecorator < Draper::Decorator
  delegate_all

  def playing_time
    h.distance_of_time_in_words(
      (object.playing_time_min + object.playing_time_max) / 2
    )
  end

  def number_of_players
    if object.players_min == object.players_max
      object.players_min
    else
      "#{object.players_min} - #{object.players_max}"
    end
  end

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
end
