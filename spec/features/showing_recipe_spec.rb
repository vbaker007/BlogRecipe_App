require 'rails_helper'

RSpec.feature "Showing Recipe" do

  before do
    @article = Article.create(name: "The first recipe", summary: "Body of first recipe", description: "this is a test to gage the successes and failure within this app")
  end

  scenario "Display individual recipe" do
    visit "/"

    click_link @recipe.name

    expect(page).to have_content(@article.title)
    expect(page).to have_content(@article.body)
    expect(current_path).to eq(recipe_path(@recipe))
  end
end