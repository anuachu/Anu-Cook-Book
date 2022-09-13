def all_recipe
    run_sql("SELECT * FROM fitness ORDER BY id")
end

def create_recipe(image_url, name, description)
    run_sql("INSERT INTO fitness(image_url, name, description) VALUES($1, $2, $3)",[image_url, name, description])
end
