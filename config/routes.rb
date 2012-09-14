Rails.application.routes.draw do

  resources :snippets, :only => [:edit, :update], :controller => "YmSnippets::Snippets", :as => :snippets

end
