class EntriesController < ApplicationController
  def new
    # Render the new entry form
  end

  def create
    # Start with a new Entry
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"] # <-- Ensure this matches schema
    @entry["place_id"] = params["place_id"]

    # Save Entry and redirect user
    @entry.save
    redirect_to "/places/#{@entry["place_id"]}"
  end
end