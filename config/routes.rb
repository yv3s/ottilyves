Rails.application.routes.draw do
  root to: 'pages#home'
  get '/la-journee', to: 'pages#lajournee'
  get '/les-hotels', to: 'pages#leshotels'
  get '/rsvp', to: 'pages#rsvp'
  post '/rsvp', to: 'pages#rsvpnew'
  get '/liste-mariage', to: 'pages#liste'
end
