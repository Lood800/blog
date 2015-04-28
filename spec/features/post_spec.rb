require 'rails_helper'
require 'faker'

feature 'Post Management' do

  scenario 'redirect to login to create a new post' do
    visit new_post_path
    expect(page).to have_content 'Please log in.'
  end

  scenario 'creates a new post' do
    sign_in_as_a_valid_user
    create(:subscriber)
    visit root_path
    click_link 'New Post'
    # save_and_open_page
    expect{
      fill_in 'Heading', with: Faker::Lorem.sentence(1)
      fill_in 'Sub heading', with: Faker::Lorem.sentence(1)
      fill_in 'Body', with: Faker::Lorem.sentence(10)
      fill_in 'Caption', match: :first, with: 'Koos'
      find('#border', match: :first).attach_file 'Photo', File.join(Rails.root, '/spec/support/example.png')
      click_button 'Submit'
    }.to change(Post, :count).by(1)
    expect(current_path).to eq "/posts/1"
    expect(page).to have_content 'Post was successfully created'
    expect(page).to have_content 'Click here to subscribe to my blog posts'
  end

  scenario 'trying to access wrong post' do
    visit post_path('100000')
    expect(page).to have_content 'Invalid post'
  end

  scenario 'does not create a new post when given wrong arguments' do
    sign_in_as_a_valid_user
    visit root_path
    click_link 'New Post'
    # save_and_open_page
    expect{
      fill_in 'Heading', with: Faker::Lorem.sentence(1)
      fill_in 'Sub heading', with: Faker::Lorem.sentence(1)
      fill_in 'Body', with: nil
      fill_in 'Caption', match: :first, with: 'Koos'
      find('#border', match: :first).attach_file 'Photo', File.join(Rails.root, '/spec/support/example.png')
      click_button 'Submit'
    }.not_to change(Post, :count)
    expect(page).to have_content "Body can't be blank"
  end

  scenario 'edit existing post' do
    create(:post)
    sign_in_as_a_valid_user
    visit root_path
    click_link 'Click here to read more and comment'
    click_link 'Edit'
    fill_in 'Heading', with: 'African Fish Eagle'
    fill_in 'Sub heading', with: 'Kruger National Park'
    fill_in 'Body', with: 'Awesome fish *eagle* seen **last** year'
    click_button 'Submit'
    expect(current_path).to eq "/posts/1"
    expect(page).to have_content 'African Fish Eagle'
    expect(page).to have_content 'Kruger National Park'
    expect(page).to have_content 'Awesome fish eagle seen last year'
  end

  scenario 'edit existing post with wrong arguments' do
    create(:post)
    sign_in_as_a_valid_user
    visit root_path
    click_link 'Click here to read more and comment'
    click_link 'Edit'
    fill_in 'Heading', with: 'African Fish Eagle'
    fill_in 'Sub heading', with: 'Kruger National Park'
    fill_in 'Body', with: nil
    click_button 'Submit'
    expect(page).to have_content "Body can't be blank"

  end

  scenario 'delete post' do
    create(:post)
    sign_in_as_a_valid_user
    visit posts_path
    expect{
      click_link 'Delete'
      }.to change(Post, :count).by(-1)
    expect(page).to have_content 'Post was successfully destroyed'
  end
end




