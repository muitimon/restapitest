require 'grape'
class HelloAPI < Grape::API
    format :json
    get '/' do
        {'hello': 'world', 'params': params}
    end
end