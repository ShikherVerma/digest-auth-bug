require 'rails_helper'

RSpec.describe :type => :request do

  context 'testing basic auth' do
    it 'returns ok' do
      basic_authorize 'dhh', 'secret'
      request 'http://localhost:3000/basic'
      assert_equal 200, last_response.status
    end
  end

  context 'testing digest auth' do
    it 'returns ok' do
      digest_authorize 'dhh', 'secret'
      request 'http://localhost:3000/digest'
      assert_equal 200, last_response.status
    end
  end

end
