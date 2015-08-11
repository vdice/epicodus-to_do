require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the task path", {:type => :feature}) do
  it("print out the to do task") do
    visit("/")
    fill_in("description", :with => "do dishes")
    click_button("Add task")
    expect(page).to have_content("The task has been successfully submitted!")

  end
end
