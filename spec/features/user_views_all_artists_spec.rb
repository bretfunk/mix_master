require 'rails_helper'

RSpec.feature do "user visits 'all artists'"
    scenario "they see all artists" do
    Artist.create(name: "Jack Johnson", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg" )
    Artist.create(name: "Wayne Newton", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg" )

      artist_name       = "Jack Johnson"
      other_artist_name = "Wayne Newton"
      artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

      visit artists_path

      expect(page).to have_content artist_name
      expect(page).to have_content other_artist_name
      expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
      expect(page).to have_content "New artist"

      click_on "Jack Johnson"
      expect(page).to have_content artist_name

    end
  end
