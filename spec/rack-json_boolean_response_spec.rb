require 'spec_helper.rb'

describe Rack::JSONBooleanReponse do
  let(:response_status) { 200 }
  let(:response_headers) { { 'Content-Type' => 'application/json' } }
  let(:response_body) { [] }
  let(:request) { Rack::MockRequest.env_for("/action.json") }
  let(:app) do
    lambda do |params|
      [response_status, response_headers, response_body]
    end
  end

  describe "when a valid json request is made" do
    it 'converts true to 1 in the response' do
      response_body << '{"bool":true}'
      json_response = Rack::JSONBooleanReponse.new(app).call(request)
      json_response_status, json_response_headers, json_response_body = json_response
      expect( json_response_body ).to eq(['{"bool":1}'])
    end

    it 'converts false to 0 in the response' do
      response_body << '{"bool":false}'
      json_response = Rack::JSONBooleanReponse.new(app).call(request)
      json_response_status, json_response_headers, json_response_body = json_response
      expect( json_response_body ).to eq(['{"bool":0}'])
    end
  end
end
