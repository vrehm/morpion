require "rails_helper"

# visit games/new
RSpec.describe "play Tic Tac Toe game vs the computer", type: :feature do
  it "you can make a draw against the computer" do
    visit "/games"
    expect(page).to have_title "Morpion"
    expect(page).to have_content "Jeu du Morpion"
    expect(page).to have_content "Commencer une nouvelle partie"
    click_on "Commencer une nouvelle partie", match: :first

    fill_in "Votre pseudo", with: "Fortuna"
    click_on "Commencer une nouvelle partie", match: :first

    expect(page).to have_content "Fortuna VS Ordinateur"
    expect(page).to have_content "Que jouez-vous Fortuna ?"
    expect(page).to have_content "1"
    expect(page).to have_content "2"
    expect(page).to have_content "3"
    expect(page).to have_content "4"
    expect(page).to have_content "5"
    expect(page).to have_content "6"
    expect(page).to have_content "7"
    expect(page).to have_content "8"
    expect(page).to have_content "9"

    # turn 1
    select "5", from: "your_turn"
    click_on "Jouer le premier coup"
    expect(page).to have_content "1"
    expect(page).to have_content "2"
    expect(page).to have_content "3"
    expect(page).to have_content "4"
    expect(page).to have_content "X", count: 1
    expect(page).to have_content "O", count: 2 # 1 for the 'Ordinateur', 1 for the grid 'O'
    expect(page).to have_content "7"
    expect(page).to have_content "8"
    expect(page).to have_content "9"

    # turn 2
    select "4", from: "your_turn"
    click_on "Jouer le coup 2"
    expect(page).to have_content "1"
    expect(page).to have_content "2"
    expect(page).to have_content "3"
    expect(page).to have_content "X", count: 2
    expect(page).to have_content "O", count: 3 # 1 for the 'Ordinateur', 2 for the grid 'O'
    expect(page).to have_content "8"
    expect(page).to have_content "9"

    # turn 3
    select "9", from: "your_turn"
    click_on "Jouer le coup 3"
    expect(page).to have_content "2"
    expect(page).to have_content "3"
    expect(page).to have_content "X", count: 3
    expect(page).to have_content "O", count: 4 # 1 for the 'Ordinateur', 3 for the grid 'O'
    expect(page).to have_content "8"

    # turn 4
    select "8", from: "your_turn"
    click_on "Jouer le coup 4"
    expect(page).to have_content "3"
    expect(page).to have_content "X", count: 4
    expect(page).to have_content "O", count: 5 # 1 for the 'Ordinateur', 4 for the grid 'O'

    # turn 5
    select "3", from: "your_turn"
    click_on "Jouer le coup 5"
    expect(page).to have_content "X", count: 5
    expect(page).to have_content "O", count: 5 # 1 for the 'Ordinateur', 4 for the grid 'O'
    expect(page).to have_content "C'est une égalité !"
  end
end