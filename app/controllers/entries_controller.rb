class EntriesController < ApplicationController
  def new
    # render view with new Entry form
  end

  def create
    # start with a new Entry
    @entry = Entry.new
    # assign user-entered form data to Entry's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["date"] = params["date"]
    @entry["place_id"] = params["place_id"]
    # save Entry row
    @entry.save
    # redirect user to the place's page
    redirect_to "/places/#{@entry["place_id"]}"
  end
end