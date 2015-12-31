require 'rails_heler'

RSpec.feature "Creating Recipes" do 
  scenario "A chef creates a new recipe" do
    vist "/"

    click_link "New Recipe"

    fill_in "Name", with: "Creating first recipe"
    fill_in "Summary", with: "Lorem Ipsum"
    click_button "Create Recipe"

    expect(page).to have_content("Recipe has been successfully created")
    expect(page.current_path).to eq(recipes_path)
  end

end