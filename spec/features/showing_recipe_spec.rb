require 'rails_helper'

RSpec.feature "Showing Recipe" do

  before do
    @article = Article.create(name: "The first recipe", summary: "Summary of first recipe", description: "this is a test to gage the successes and failure within this app")
  end

  scenario "Display individual recipe" do
    visit "/"

    click_link @recipe.name

    #expect(page).to have_content(@recipe.name)
    #expect(page).to have_content(@recipe.summary)
    #expect(page).to have_content(@recipe.description)
    #expect(current_path).to eq(recipe_path(@recipe))
  end
end