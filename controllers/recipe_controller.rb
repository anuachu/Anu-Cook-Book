require './models/recipe'

get '/' do
    recipes = all_recipe()

    erb :'recipe/index', locals: {
        recipes: recipes
    }
end

get '/recipe/new' do
    erb :'recipe/new'
end

post '/recipes' do
    image_url = params['image_url']
    name = params['name']
    description = params['description']

    create_recipe(image_url, name, description)

    redirect '/'
end

post '/recipe/newAdd' do
    "Hello World"
end