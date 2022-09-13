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

post '/recipe/add' do
    erb :'recipe/add'
end

post '/recipes/add' do
     name = params['name']
     qty = params['qty']
     measurement = params['measurement']

     create_ingredients(name,qty,measurement)

     redirect '/'
end

get '/images/new' do
    recipes = all_recipe()
    ingredients = all_ingredients()

    erb :'recipe/recipe_ingr', locals: {
        ingredients: ingredients
    }
end

get '/recipe/:id/edit' do
    id = params['id']
    recipe = get_recipe(id)

    erb :'recipe/edit', locals:{
        recipe: recipe
    }
end

put '/recipe/:id' do
    id = params['id']
    image_url = params['image_url']
    name = params['name']
    description = params['description']

    update_recipe(id,image_url,name,description)

    redirect '/'
end


delete '/recipe/:id' do
    id = params['id']

    delete_recipe(id)
    redirect '/'
end
  

