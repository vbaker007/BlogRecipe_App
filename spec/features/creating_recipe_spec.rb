require 'rails_helper'
RSpec.feature "Creating Recipes" do 
  scenario "A chef creates a new recipe" do
    visit "/"

    fill_in "Name", with: "Creating first recipe"
    fill_in "Summary", with: "Lorem Ipsum"
    click_button "Create Recipe"

    expect(page).to have_content("Recipe has been successfully created")
    expect(page.current_path).to eq(new_recipe_path)
  end
end