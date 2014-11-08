module GamesHelper
  def sorting_params_for(parameter)
    { sort_by: parameter,
      sort_dir: sorting_dir_for(parameter) }
  end

  def sorting_icon_for(parameter)
    if params[:sort_by] == parameter
      if params[:sort_dir] == "desc"
        "descending"
      elsif params[:sort_dir] == "asc"
        "ascending"
      end
    end
  end

  private

  def sorting_dir_for(parameter)
    if params[:sort_by] == parameter
      reverse_dir
    else
      "asc"
    end
  end

  def reverse_dir
    case params[:sort_dir]
    when "asc" then "desc"
    when "desc" then "asc"
    else
      "asc"
    end
  end
end
