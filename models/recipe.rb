def all_recipe
    run_sql("SELECT * FROM recipe ORDER BY id")
  
end

# def create_ingredients(ingredient_name,qty,measurement)
#     run_sql("INSERT INTO recipe ingredient1")
# end

def create_recipe(name, ingredient_name,step1,step2,image_url)
    run_sql("INSERT INTO recipe(name,ingredient_name,step1,step2,image_url) VALUES($1, $2, $3, $4, $5)",[name, ingredient_name,step1,step2,image_url])
end

# def create_ingredients(name,qty,measurement)
#     run_sql("INSERT INTO ingredients(name, qty, measurement) VALUES($1, $2, $3)",[name,qty,measurement])
# end


def get_recipe(id)
    run_sql("SELECT * FROM recipe WHERE id = $1",[id])[0]
end

def update_recipe(id,name,ingredient_name,step1,step2,image_url)
    run_sql("UPDATE recipe SET name = $2, ingredient_name = $3, step1 = $4, step2 = $5, image_url = $6  WHERE id = $1",[id,name,ingredient_name,step1,step2,image_url])
end


def delete_recipe(id)
    run_sql("DELETE FROM recipe WHERE id = $1",[id])
end

# def create_methods(step1,step2)
#     run_sql("INSERT INTO methods(step1,step2)VALUES($1, $2)",[step1,step2])
# end

# def create_media(image_url,video)
#     run_sql("INSERT INTO media(image_url,video)VALUES($1, $2)",[image_url,video])
# end

# def  all_recipe_ingredients(name,qty,measurement,step1,step2,image_url,video,ingredient_name)
#     run_sql("SELECT recipe.name, ingredients.ingredient_name,ingredients.qty,ingredients.measurement,methods.step1,methods.step2,media.image_url,media.video FROM fitness JOIN ingredients ON fitness.id = ingredients.id JOIN methods ON fitness.id = methods.id JOIN media ON fitness.id = media.id")
# end

def get_all_recipes(name)
    run_sql("SELECT * FROM recipe WHERE name ILIKE $1",[name])
end
