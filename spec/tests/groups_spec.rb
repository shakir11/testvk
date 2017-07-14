require 'spec_helper'

GROUP_URL = '/club149408465'
MESSAGE_BODY = 'HELLO!'


describe 'find post in groups page' do
  let(:group_page) { GroupPage.new }

  context 'Post message in group' do
    it 'Signed in Successfully' do
      visit '/club149408465'
      group_page.do_quicklogin(LOGIN, PASSWORD)
      expect(page).to have_text ''

      group_page.create_post(MESSAGE_BODY)
      expect(page).to have_content('')
    end
  end
  # find('.group_row_title').click
	# page.execute_script "window.scrollBy(0,10000)"
end
