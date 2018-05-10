Rails.application.routes.draw do
  get 'digest' => 'digest#digest'
  get 'basic' => 'basic#basic'
end
