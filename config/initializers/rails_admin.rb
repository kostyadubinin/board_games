RailsAdmin.config do |config|
  config.authorize_with do
    authenticate_or_request_with_http_basic("Please login.") do |username, password|
      username == ENV["RAILS_ADMIN_LOGIN"] && password == ENV["RAILS_ADMIN_PASSWORD"]
    end
  end

  config.model "Game" do
    edit do
      field :name
      field :remote_image_url
      field :description

      field :players_min
      field :players_max

      field :playing_time_min
      field :playing_time_max

      field :age
      field :website
    end
  end

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, "User", "PaperTrail::Version" # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
