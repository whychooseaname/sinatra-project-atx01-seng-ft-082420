class ExposController < Sinatra::Base
    set(:views, 'app/views/expos')
    use Rack::MethodOverride

    get '/expos' do
        @expos = Expo.all
        erb :index
    end

    get '/expos/new/:id' do
        @cook = Cook.find(params[:id])
        erb :new
    end

    post '/expos' do 
        # binding.pry
        chef = Cook.find(params[:id])
        Expo.create(name: chef.name, description: params[:description])
        chef.delete
        redirect to '/expos'
    end

    get '/expos/:id' do 
        @chef = Expo.find(params[:id])
        erb :show
    end

end