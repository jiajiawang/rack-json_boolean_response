require "rack/json_boolean_response/version"

module Rack
  class JSONBooleanReponse

    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, body = @app.call(env)
      if headers["Content-Type"].include?("application/json")
        body.each do |content|
          content.gsub!(/(?<=\:)true/, '1')
          content.gsub!(/(?<=\:)false/, '0')
        end
      end
      [status, headers, body]
    end

  end
end
