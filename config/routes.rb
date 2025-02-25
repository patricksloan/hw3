Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

  # Routes for places
  get("/places", { :controller => "places", :action => "index" })  # List all places
  get("/places/new", { :controller => "places", :action => "new" })  # Form for new place
  post("/places", { :controller => "places", :action => "create" })  # Create a new place
  get("/places/:id", { :controller => "places", :action => "show" })  # Show a single place

  # Routes for entries
  get("/entries/new", { :controller => "entries", :action => "new" })  # Form for new entry
  post("/entries", { :controller => "entries", :action => "create" })  # Create a new entry
end