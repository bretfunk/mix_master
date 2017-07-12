# As a user
# Given that playlists exist in the database
# When I visit the playlists index
# Then I should see each playlist's name
# And each name should link to that playlist's individual page

require 'rails_helper'

RSpec.describe "user sees all playlists" do
  scenario "and can visit individual playlist pages" do
    playlist1 = create(:playlist)
    playlist2 = create(:playlist)

    visit playlists_path

    expect(page).to have_content playlist1.name
    expect(page).to have_content playlist2.name

    click_on playlist1.name
    expect(page).to have_content playlist1.name
    # expect(page).have_content playlist2.name
    end
  end
