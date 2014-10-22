class GameDecorator < Draper::Decorator
  delegate_all

  def playing_time
    if object.playing_time_min == object.playing_time_max
      object.playing_time_max / 60
    else
      "#{object.playing_time_min / 60} - #{object.playing_time_max / 60}"
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