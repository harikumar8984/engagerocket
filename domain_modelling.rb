resources :questions, only: [:index, :show] do

  resources :feedbacks, only: :show do

    put '/acknowledge' => 'feedbacks#acknowledge'
    post '/discuss' => 'feedbacks#discuss'
    put '/resolve' => 'feedbacks#resolve'
  end
end

# GET    /questions(.:format)                                                 questions#index

# GET    /questions/:id(.:format)                                             questions#show

# GET    /questions/:question_id/feedbacks/:id(.:format)                      feedbacks#show

# PUT    /questions/:question_id/feedbacks/:feedback_id/acknowledge(.:format) feedbacks#acknowledge

# POST   /questions/:question_id/feedbacks/:feedback_id/discuss(.:format)    feedbacks#discuss

# PUT    /questions/:question_id/feedbacks/:feedback_id/resolve(.:format)     feedbacks#resolve