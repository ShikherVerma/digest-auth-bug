class DigestController < ApplicationController
  REALM = 'SuperSecret'
  USERS = {'dhh' => 'secret'}  #plain text password

  before_action :authenticate

  def digest
    render plain: 'Authenticated with digest auth!'
  end

  private

  def authenticate
    authenticate_or_request_with_http_digest(REALM) do |username|
      USERS[username]
    end
  end
end
