# TODO: Write the documentation for the methods
# TODO: Write tests before going any further
class GameDecorator < Draper::Decorator
  delegate_all

  def playing_time
    min, max = object.playing_time_min, object.playing_time_max

    handle_none min, max do
      h.distance_of_time_in_words([min, max].compact.sum / [min, max].compact.size)
    end
  end

  def number_of_players
    min, max = object.players_min, object.players_max

    handle_none min, max do
      return [min, max].compact.max if [min, max].compact.size == 1
      min == max ? min : "#{min} - #{max}"
    end
  end

  def website_link
    handle_none object.website do
      h.link_to object.website, target: "_blank" do
        h.content_tag(:i, nil, class: "external url icon")
      end
    end
  end

  private

  def handle_none(*values)
    if values.any?(&:present?)
      yield
    else
      h.content_tag(:span, "n/a", class: "disabled")
    end
  end
end
