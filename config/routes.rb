Rails.application.routes.draw do

  resources :snippets, :only => [:index, :edit, :update], :controller => "snippets", :as => :snippets

end
