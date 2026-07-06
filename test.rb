Rails.application.routes.draw do
  root "quiz#index"

  post "/quiz/check", to: "quiz#check", as: :quiz_check
  post "/quiz/reset", to: "quiz#reset", as: :quiz_reset
end
