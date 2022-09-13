def all_recipe
    run_sql("SELECT * FROM fitness ORDER BY id")
  
end

def all_ingredients
    run_sql("SELECT * FROM ingredients ORDER BY id")
end

def create_recipe(image_url, name, description)
    run_sql("INSERT INTO fitness(image_url, name, description) VALUES($1, $2, $3)",[image_url, name, description])
end

def create_ingredients(name,qty,measurement)
    run_sql("INSERT INTO ingredients(name, qty, measurement) VALUES($1, $2, $3)",[name,qty,measurement])
end


def get_recipe(id)
    run_sql("SELECT * FROM fitness WHERE id = $1",[id])[0]
end

def update_recipe(id,image_url,name,description)
    run_sql("UPDATE fitness SET image_url = $2, name = $3, description = $4 WHERE id = $1",[id,image_url,name,description])
end


def delete_recipe(id)
    run_sql("DELETE FROM fitness WHERE id = $1",[id])
end