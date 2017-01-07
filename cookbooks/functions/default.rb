MItamae::RecipeContext.class_eval do
  def include_cookbook(name)
    cookbooks_dir = File.expand_path("../..", __FILE__)
    include_recipe(File.join(cookbooks_dir, name))
  end
end
