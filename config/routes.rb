Rails.application.routes.draw do
# angular
  get '/', to: 'home#index', as: :root
end
