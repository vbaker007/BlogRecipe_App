require 'selenium-webdriver'
require "rails_helper"

RSpec.feature "Listing Recipes" do 
  before do
    @recipe1 = Recipe.create(summary: "The first recipe", description: "Body of the first recipe")
    @recipe2 = Recipe.create(summary: "The second article", description: "Body of the second recipe")
  end

  scenario "List all recipes" do
    visit "/"

    expect(page).to have_content(@recipe1.summary)
    expect(page).to have_content(@recipe1.description)
    expect(page).to have_content(@recipe2.summary)
    expect(page).to have_content(@recipe2.description)
    expect(page).to have_link(@recipe1.summary)
    expect(page).to have_link(@recipe2.summary)
  end
end