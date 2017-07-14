class SignInPage
  include Capybara::DSL

  def do_login(username, password)
    # top_bar do
      # within_frame(find('#index_login')) do
      within('#index_login') do
        # byebug
        fill_in('email', :with => username)      #  ('#index_email
        fill_in('pass', :with => password)   #  ('#index_pass'
        click_button('Log in')
      end
    # end
  end
end
