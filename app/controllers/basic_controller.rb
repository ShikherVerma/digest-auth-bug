class BasicController < ApplicationController
  http_basic_authenticate_with name: 'dhh', password: 'secret'

  def basic
    render plain: 'Authenticated with digest auth!'
  end

end
