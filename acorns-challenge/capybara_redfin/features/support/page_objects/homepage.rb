class Homepage
  include Capybara::DSL

  def load_page
    visit "/"
    self
  end

  def show_login_form
    load_page
    click_button "Log In"
    click_button "Continue with Email"
  end

  def login_with username, password
    show_login_form

    within ".signInForm" do
      fill_in "Email", with: username
      fill_in "Password", with: password

      click_button "Sign In"
    end
  end

  def has_id? id
    page.has_css? "##{id}"
  end
end