RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.included_models = ["Brand", "Volume", "Product", "Category"]

  config.model 'Brand' do
    list do
      include_fields :name, :created_at, :updated_at
    end

    create do
      include_fields :name
    end

    show do
      include_fields :name
    end

    edit do
      include_fields :name
    end
  end

  config.model 'Volume' do
    list do
      include_fields :number, :unit
    end

    create do
      include_fields :number, :unit
    end

    show do
      include_fields :number, :unit
    end

    edit do
      include_fields :number, :unit
    end
  end

  config.model 'Category' do
    list do
      include_fields :name
      field :ancestry do
        label "Parents"
        formatted_value do
          bindings[:object].ancestry_path_names
        end
      end
    end

    create do
      include_fields :name, :description
      field :ancestry do
        label "Parents"
        partial "ancestry"
      end
    end

    show do
      include_fields :name, :description
      field :ancestry do
        label "Parents"
        formatted_value do
          bindings[:object].ancestry_path_names
        end
      end
    end

    edit do
      include_fields :name, :description
      field :ancestry do
        label "Parents"
        partial "ancestry"
      end
    end
  end

  config.model 'Product' do
    # create do
    #   field :ancestry do
    #     label "Parents"
    #     partial "ancestry"
    #   end
    # end
  end

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
