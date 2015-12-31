require 'rails_heler'

RSpec.feature "Creating Recipes" do 
  scenario "A chef creates a new recipe" do
    vist "/"

    click_link "New Recipe"

    fill_in "Name", with: "Creating first recipe"
  end

end