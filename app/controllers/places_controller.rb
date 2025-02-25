class PlacesController < ApplicationController
  def index
    # Find all Place rows
    @places = Place.all
    # Render places/index view
  end

  def show
    # Find a Place
    @place = Place.find_by({ "id" => params["id"] })

    # Fetch all Entries associated with this Place
    @entries = Entry.where({ "place_id" => @place["id"] })

    # Ensure @entries is never nil
    if @entries == nil
      @entries = []
    end
  end

  def new
    # Render view with new Place form
  end

  def create
    # Start with a new Place
    @place = Place.new
    # Assign user-entered form data to Place's columns
    @place["name"] = params["name"]
    # Save Place row
    @place.save
    # Redirect user
    redirect_to "/places"
  end
end