Rails.application.routes.draw do

  get("/", {:controller => "puzzle", :action => "all_guesses"})

  get("/all_guesses", {:controller => "puzzle", :action => "all_guesses"})

  get("/show_answer", {:controller => "puzzle", :action=> "show_answer"})

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
