require 'spec_helper'

describe 'find post in groups page' do

  context 'Search element in the feed'  do
    before(:each) do
      visit('/')
      @top = AuthorisationPage.new
      @top.do_login( LOGIN, PASSWORD )
    end

    it 'scroll down in' do
    	find('.left_label', text: 'Группы').click
    	within '.page_block #group_u_search_input_wrap' do
    		# GROUP_NAME = 'Суровый технарь'
    		# BUTTON_SEARCH_GROUP = '._ui_search_button_search'
    		# fill_in('groups_list_search', :with => GROUP_NAME)
    		visit('/brutalengineer')

    		
    	end

    	# find('.group_row_title').click
    	expect(page).to have_content('Единственный паблик без политоты.')
      	
      	page.execute_script "window.scrollBy(0,10000)"
    end
  end
end