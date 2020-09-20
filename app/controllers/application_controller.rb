class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set(:views, 'app/views')
  use Rack::MethodOverride

  get '/' do 
    erb :index
  end

end
