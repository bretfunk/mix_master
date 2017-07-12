require 'rails_helper'

RSpec.feature "Create new playlists and delete songs" do
  scenario "when visiting the playlists show page" do

    song1 = create(:song)
    song2 = create(:song)
    song3 = create(:song)
    playlist = create(:playlist)

    visit playlist_path(playlist)
    click_on "Edit"
    fill_in "playlist_name", with: "DIFFERENT"
    # check song1.title
    # uncheck 'song2.title'
    click_on "Update Playlist"

    expect(page).to have_content("DIFFERENT")
    # expect(page).to have_content(song1.title)





  end
end
