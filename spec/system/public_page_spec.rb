require "rails_helper"

# visit public/index
RSpec.describe "Public page", type: :feature do
  it "has a title" do
    visit public_index_path
    expect(page).to have_title "Morpion"
  end

  it "has a h1 title with 'Jeu du Morpion'" do
    visit public_index_path
    expect(page).to have_css "h1", text: "Jeu du Morpion"
  end

  it "has a grid with 9 cells, 9 `li` tags" do
    visit public_index_path
    expect(page).to have_css "li", count: 9
    expect(page).to have_css "li", text: "1"
    expect(page).to have_css "li", text: "2"
    expect(page).to have_css "li", text: "3"
    expect(page).to have_css "li", text: "4"
    expect(page).to have_css "li", text: "5"
    expect(page).to have_css "li", text: "6"
    expect(page).to have_css "li", text: "7"
    expect(page).to have_css "li", text: "8"
    expect(page).to have_css "li", text: "9"
  end
end
