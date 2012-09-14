require 'spec_helper'

feature 'Creating Projects' do
  scenario 'Can create a project' do
    visit '/'
    click_link 'New Project'
    fill_in 'Name', :with => 'A text-editor for OS X'
    click_button 'Create Project'

    page.should have_content('Project has been created')
  end
end
