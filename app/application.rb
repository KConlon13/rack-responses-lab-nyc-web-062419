require 'pry'

class Application

    def call(env)
        resp = Rack::Response.new

        time = Time.now
        
        if time.hour < 12
            resp.write "Good Morning!"
        elsif time.hour >= 12
            resp.write "Good Afternoon!"
        end
        # binding.pry
        resp.finish
    end
end