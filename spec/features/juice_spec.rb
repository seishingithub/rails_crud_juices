require 'spec_helper'

feature 'User can manage juices' do
  scenario 'User can create and view list of juices' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add juice'
    fill_in 'Flavor', with: 'cranberry'
    fill_in 'Ingredients', with: 'cranberry and apple juices'
    click_on 'Create juice'
    expect(page).to have_content 'cranberry'
    expect(page).to have_content 'cranberry and apple juices'
  end

  scenario 'User can edit and update list of juices' do
    visit '/'
    click_on 'Add juice'
    fill_in 'Flavor', with: 'cranberry'
    fill_in 'Ingredients', with: 'cranberry and apple juices'
    click_on 'Create juice'
    expect(page).to have_content 'cranberry'
    expect(page).to have_content 'cranberry and apple juices'
    click_on 'cranberry'
    expect(page).to have_content 'cranberry'
    expect(page).to have_content 'cranberry and apple juices'
    click_on 'Edit'
    fill_in 'Flavor', with: 'grape'
    fill_in 'Ingredients', with: 'grape and apple juices'
    click_on 'Update'
    expect(page).to have_content 'grape'
    expect(page).to have_content 'grape and apple juices'

  end
end