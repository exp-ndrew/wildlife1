Rails.application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species/:id', {:via => :delete, :to => 'species#delete'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => :post, :to => 'species#update'})
  match('species/:id', {:via => :get, :to => 'species#show'})

  match('species/:id/sightings/new', {:via => :post, :to => 'sighting#create'})
  match('sightings/:id', {:via => :delete, :to => 'sighting#delete'})
end
