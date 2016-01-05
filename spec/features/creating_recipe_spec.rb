require 'selenium-webdriver'
require 'rails_helper'
RSpec.feature "Creating Recipes" do 
  scenario "A chef creates a new recipe" do
    visit "/"

    fill_in "Name", with: ""
    fill_in "Summary", with: ""
    

    expect(page).to have_content("Recipe has been successfully created")
    expect(page.current_path).to eq(new_recipe_path)
  end

  scenario "A user fails to create a new recipe" do
    visit "/"

    fill_in "Name", with: ""
    fill_in "Summary", with: ""
    

    expect(page).to have_content("Recipe has not been created")
    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content("Summary can't be blank")
  end

  describe "current_user" do
    before :each do
      @chef = Chef.new
    end
  end
end