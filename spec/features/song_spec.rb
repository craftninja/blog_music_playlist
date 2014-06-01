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

  scenario 'User can update songs' do
    old_title = 'Touch'
    title = 'Holy Other - Touch'
    url = 'https://soundcloud.com/holyother/touch'
    visit '/song'
    click_on 'Add new Jam'
    fill_in 'Title', with: old_title
    fill_in 'URL', with: url
    click_on 'Queue!'
    click_on old_title
    expect(page).to have_content(old_title)
    expect(page).to have_content(url)
    click_on 'Edit'
    fill_in 'Title', with: title
    fill_in 'URL', with: url
    click_on 'Update'
    expect(page).to have_content(title)
    expect(page).to have_content(url)
  end

  scenario 'User can delete songs' do
    title = 'Epic Rap Battle - Geek v Nerd'
    url = 'http://www.youtube.com/watch?v=2Tvy_Pbe5NA'
    visit '/song'
    click_on 'Add new Jam'
    fill_in 'Title', with: title
    fill_in 'URL', with: url
    click_on 'Queue!'
    click_on title
    click_on 'Over it!'
    expect(page).to have_no_content(title)
    expect(page).to have_no_content(url)
  end

end
