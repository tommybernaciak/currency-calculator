Rails.application.routes.draw do
# angular
  get '/', to: 'home#index', as: :root

  get '/currency_list', to: 'currency#list'
  get '/refresh', to: 'currency#refresh'
end
