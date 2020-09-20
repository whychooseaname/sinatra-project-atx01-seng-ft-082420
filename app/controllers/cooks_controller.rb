class CooksController < Sinatra::Base
    set(:views, 'app/views/cooks')
    use Rack::MethodOverride

    get '/cooks' do
        @cooks = Cook.all
        erb :index
    end

    get '/cooks/new' do
        erb :new
    end

    get '/cooks/:id' do
        @cook = Cook.find(params[:id])
        erb :show
    end

    post '/cooks' do 
        new_cook = Cook.create(params)
        redirect "/cooks/#{new_cook.id}"
    end
        
end