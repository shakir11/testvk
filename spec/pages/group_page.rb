class GroupPage
  include Capybara::DSL

  def do_quicklogin(username, password)
    within('#quick_login') do
      find('#quick_email').set username
      find('#quick_pass').set password
      find('#quick_login_button').click
    end
  end

  def create_post(text)
    within('#submit_post_box') do
      find('#post_field').set 'hello'
      find('#send_post').click
    end
  end
end
