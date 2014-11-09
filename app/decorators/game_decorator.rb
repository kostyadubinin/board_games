# TODO: Write the documentation for the methods
# TODO: Write tests before going any further
class GameDecorator < Draper::Decorator
  delegate :name, :description, :chuvachi_link

  def main_picture
    object.pictures.first
  end

  def gallery_pictures
    object.pictures - [main_picture]
  end

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
    link(object.website)
  end

  def wikipedia_link
    link(object.wikipedia_link)
  end

  def bgg_link
    link(object.bgg_link)
  end

  def suggested_age
    handle_none object.age do
      "#{object.age}+"
    end
  end

  def year_published
    handle_none object.published_at do
      object.published_at
    end
  end

  private

  def link(url)
    handle_none url do
      h.link_to url, target: "_blank" do
        h.content_tag(:i, nil, class: "external url icon")
      end
    end
  end

  def handle_none(*values)
    if values.any?(&:present?)
      yield
    else
      h.content_tag(:span, "n/a", class: "disabled")
    end
  end
end
