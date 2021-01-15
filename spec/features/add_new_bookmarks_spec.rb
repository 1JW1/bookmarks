feature 'add bookmarks' do
    scenario 'user can add bookmarks' do
        visit('/bookmarks/new')
        fill_in('bookmark link', with: 'https://codecabulary.launchacademy.com/learn-test-driven-development/rspec/capybara-cheat-sheet')
        click_button('Save')
        expect(page).to have_content?('https://codecabulary.launchacademy.com/learn-test-driven-development/rspec/capybara-cheat-sheet')
    end
end