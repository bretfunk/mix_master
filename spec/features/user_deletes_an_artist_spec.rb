require 'rails_helper'

RSpec.feature "User visits an artists profile and clicks delete" do
scenario "The artist is deleted" do
  Artist.create(name: "Jack Johnson", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg" )
  Artist.create(name: "Wayne Newton", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg" )

  visit artists_path

  expect(page).to have_content "Jack Johnson"
  expect(page).to have_content "Wayne Newton"
  click_on "Wayne Newton"
  expect(page).to have_content "Wayne Newton"
  expect(page).to have_content "Delete"
  click_on "Delete"
  expect(page).to have_content "Jack Johnson"
  page.should have_no_content "Wayne Newton"

  end
end
