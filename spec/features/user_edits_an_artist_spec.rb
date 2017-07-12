require 'rails_helper'

RSpec.feature "On an artist's page" do
    scenario "they can see their edits" do
      artist = Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg" )

      visit artists_path

      artist_name       = "Bob Marley"
      artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

      expect(page).to have_content artist_name
      click_on "Bob Marley"
      expect(page).to have_content artist_name
      expect(page).to have_content "Edit"

      click_on "Edit"
      fill_in "Name", with: "Jack Johnson"
      click_on "Update Artist"
      expect(page).to have_content "Jack Johnson"
      expect(page).to have_css("img[src=\"#{artist_image_path}\"]")

  end
end
