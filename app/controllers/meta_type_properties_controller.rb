class MetaTypePropertiesController < ApplicationController
  # cruddler just adds the ordinary CRUD methods. Nothing fancy there.
  # see https://github.com/provideal/cruddler
  cruddler :all

  def index
    @meta_type_properties = MetaTypeProperty.editable
  end
end
