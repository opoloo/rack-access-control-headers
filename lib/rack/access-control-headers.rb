module Rack
  class AccessControlHeaders
    def initialize(app, path, origin = "*")
      @app = app
      @path = path
      @origin = origin
    end

    def call(env)
      if env["REQUEST_METHOD"] == "OPTIONS"
        response = [200, {}, []]
      else
        response = @app.call(env)
      end
      
      if env["PATH_INFO"].match @path
        response[1]["Access-Control-Allow-Origin"] = @origin
        response[1]["Access-Control-Allow-Headers"] = 'X-Requested-With, Authorization, X-SproutCore-Version, Content-Type, Location, X-CSRF-Token, Accept, Accept-Version, Content-Length, Content-MD5, Date, X-Api-Version'
        response[1]['Access-Control-Allow-Methods'] = 'INDEX, GET, POST, PUT, PATCH, DELETE, OPTIONS'
        response[1]['Access-Control-Request-Methods'] = '*'
        response[1]["Expires"] = (Time.now + (60*60*24)).httpdate
      end
    
      response
    end
  end
end
