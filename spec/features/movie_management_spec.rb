require 'rails_helper'

feature 'Create and Delete Movie', :type => :feature do
  scenario 'movie is created with valid credentials' do
    visit new_movie_path
    fill_in 'Title', with: 'That New Movie'
    select 'Comedy', :from => 'Genre'
    select 'PG', :from => 'Rated'
    select 3, :from => 'Stars'
    fill_in 'Description', with: 'This is a description'
    click_on 'Create Movie'

    expect(page).to have_content('That New Movie')
  end

  scenario 'movie is deleted' do
    movie = FactoryGirl.create(:movie)
    visit "movies/#{movie.id}"
    click_on 'Delete'
    expect(page).to_not have_content('Test Movie')
  end

  scenario 'with invalid credentials' do
    visit new_movie_path
    fill_in 'Title', with: nil
    select 'Comedy', :from => 'Genre'
    select 'PG', :from => 'Rated'
    select 3, :from => 'Stars'
    fill_in 'Description', with: 'This is a description'
    click_on 'Create Movie'

    expect(page).to have_content("Title can't be blank")
  end
end
