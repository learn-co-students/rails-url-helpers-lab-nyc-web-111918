Rails.application.routes.draw do
  get student_path(@student), to: "students#show"
  resources :students, only: :index

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
end
