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
    name = params['name']
    description = params['description']
    ingredient_name = params['ingredient_name']
    qty = params['qty']
    measurement = params['measurement']
    step1 = params['step1']
    step2 = params['step2']
    image_url = params['image_url']

    create_recipe(name,ingredient_name,step1,step2,image_url)

    redirect '/recipe/all_recipes'
end

get '/recipe/all_recipes' do
    recipes = all_recipe()

    erb :'recipe/all_recipes', locals: {
        recipes: recipes
    }
end

post '/recipe/add' do
    erb :'recipe/add'
end

# post '/recipes/add' do
#      name = params['name']
#      qty = params['qty']
#      measurement = params['measurement']

#      create_ingredients(name,qty,measurement)

#      redirect '/images/new'
# end

# get '/images/new' do
#     recipes = all_recipe()
#     ingredients = all_ingredients()

#     erb :'recipe/recipe_ingr', locals: {
#         ingredients: ingredients
#     }
# end

get '/recipe/:id/edit' do
    id = params['id']
    recipe = get_recipe(id)

    erb :'recipe/edit', locals:{
        recipe: recipe
    }
end

put '/recipe/:id' do
    id = params['id']
    name = params['name']
    ingredient_name = params['ingredient_name']
    step1 = params['step1']
    step2 = params['step2']
    image_url = params['image_url']

    update_recipe(id,name,ingredient_name,step1,step2,image_url)

    redirect '/recipe/all_recipes'
end


delete '/recipe/:id' do
    id = params['id']

    delete_recipe(id)
    redirect '/recipe/all_recipes'
end


get '/recipe/ingredients' do
    ingredient_name = params['ingredient_name']
    qty = params['qty']
    measurement = params['measurement']

    create_ingredients(ingredient_name,qty,measurement)

    redirect '/recipe/new'
end

get '/search_user' do
   name = params['name']
    
 recipes = get_all_recipes(name)

  
   erb :'recipe/all_recipes',locals:{
    recipes:recipes
   }
end








# get '/recipe/all_recipes' do
#     result = HTTParty.get("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/informationBulk",headers: {
#         'X-RapidAPI-Key': '8c98ecf397msh16b31376fc72e75p1b2490jsn8f85e3113be1'})
#         all_recipe = result

#     erb :'recipe/all_recipes', locals: {
#         all_: recipes
#     }
# end
