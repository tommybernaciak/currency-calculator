Rails.application.routes.draw do
# angular
  get '/', to: 'home#index', as: :root

  get '/currency_list', to: 'currency#list'
end
