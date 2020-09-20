class DishesController < Sinatra::Base
    set(:views, 'app/views/dishes')
    use Rack::MethodOverride

    get '/dishes' do
        @dishes = Dish.all
        erb :index
    end

    get '/dishes/new' do
        @cooks = Cook.all
        @expo = Expo.all
        erb :new
    end

    patch '/dishes/:id' do
        dish = Dish.find(params[:id])
        dish.name = params[:dish][:name]
        dish.cook_id = params[:dish][:cook_id]
        dish.expo_id = params[:dish][:expo_id]
        dish.save
        redirect "/dishes/#{dish.id}"
    end

    post '/dishes' do
        new_dish = Dish.create(params[:dish])
        redirect "/dishes/#{new_dish.id}"
    end

    get '/dishes/:id/edit' do
        @dish = Dish.find(params[:id])
        @cooks = Cook.all
        @expos = Expo.all
        erb :edit
    end



    get '/dishes/:id' do
        @dish = Dish.find(params[:id])
        erb :show
    end

end