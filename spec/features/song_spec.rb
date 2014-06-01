require 'spec_helper'

feature 'User can manage a music playlist' do

  scenario 'User can add titles, links to the homepage' do
    visit '/'
    song_link = 'Welcome to PlaylistLand'
    title = "Mokadem - 'Mokadem' EP"
    url = 'https://soundcloud.com/thump/sets/mokadem-mokadem-ep'
    click_on song_link
    click_on 'Add new Jam'
    fill_in 'Title', with: title
    fill_in 'URL', with: url
    click_on 'Queue!'
    expect(page).to have_content(title)
    expect(page).to have_content(url)
  end

end
