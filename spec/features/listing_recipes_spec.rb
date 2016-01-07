require 'selenium-webdriver'
require "rails_helper"

RSpec.feature "Listing Recipes" do 
  before do
    @recipe1 = Recipe.create(name: "Recipe Test 1" ,summary: "The first recipe", description: "Coat a 1-cup glass measuring cup and two 1 1/2-quart ovenproof bowls with cooking spray. Prepare the cake mixes. Fill the cup two-thirds full with batter; divide the rest between the bowls. 
Bake 15 minutes for the cup and 35 to 40 minutes for the bowls. Let cool. Trim the tops of the bowl cakes with a serrated knife to make them level. Sandwich the cut sides together using a little frosting. 
Trim a 1-inch slice from one side of the sandwiched bowl cakes; turn cut-side down. 
Trim a little from the side of the small cake so it will lie flat, then attach to the bowl cake with frosting as shown. Cover the cake completely with frosting and freeze until firm, 30 minutes. 
Place the cake on your serving platter. Combine the food coloring and vanilla extract in a small bowl. Gently brush on the wider half of the cake. 
Arrange the sunflower seeds in rows on the red part of the cake. 
Microwave the semisweet chocolate with the butter in 30-second intervals, stirring, until melted. Spread the chocolate over the bottom two-thirds of the cake, letting it pool around the cake. 
Arrange the mint leaves around the top of the strawberry and stick a long mint stem into the cake. 
Microwave the white chocolate in 15-second intervals, stirring, until melted. Transfer to a resealable plastic bag. Snip the corner and pipe a zigzag pattern onto the semisweet chocolate. Let set 15 minutes.")
    @recipe2 = Recipe.create(name: "Recipe Test 2", summary: "The second article", description: "Coat a 1-cup glass measuring cup and two 1 1/2-quart ovenproof bowls with cooking spray. Prepare the cake mixes. Fill the cup two-thirds full with batter; divide the rest between the bowls. 
Bake 15 minutes for the cup and 35 to 40 minutes for the bowls. Let cool. Trim the tops of the bowl cakes with a serrated knife to make them level. Sandwich the cut sides together using a little frosting. 
Trim a 1-inch slice from one side of the sandwiched bowl cakes; turn cut-side down. 
Trim a little from the side of the small cake so it will lie flat, then attach to the bowl cake with frosting as shown. Cover the cake completely with frosting and freeze until firm, 30 minutes. 
Place the cake on your serving platter. Combine the food coloring and vanilla extract in a small bowl. Gently brush on the wider half of the cake. 
Arrange the sunflower seeds in rows on the red part of the cake. 
Microwave the semisweet chocolate with the butter in 30-second intervals, stirring, until melted. Spread the chocolate over the bottom two-thirds of the cake, letting it pool around the cake. 
Arrange the mint leaves around the top of the strawberry and stick a long mint stem into the cake. 
Microwave the white chocolate in 15-second intervals, stirring, until melted. Transfer to a resealable plastic bag. Snip the corner and pipe a zigzag pattern onto the semisweet chocolate. Let set 15 minutes.")
  end

  scenario "All Recipes" do
    visit "/"

    #expect(page).to have_content(@recipe1.name)
    #expect(page).to have_content(@recipe1.summary)
    #expect(page).to have_content(@recipe1.description)
    #expect(page).to have_content(@recipe2.name)
    #expect(page).to have_content(@recipe2.summary)
    #expect(page).to have_content(@recipe2.description)
    #expect(page).to have_link(@recipe1.name)
    #expect(page).to have_link(@recipe2.name)
  end
end