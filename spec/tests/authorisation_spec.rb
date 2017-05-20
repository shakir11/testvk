require 'spec_helper'

describe 'VK web site' do

  context 'with page object' do
    before(:each) do
      visit('/')
      @top = AuthorisationPage.new
    end
    it 'shows the feed page' do
      @top.do_login( LOGIN, PASSWORD )
      expect(page).to have_selector(:css, ".wide_column #main_feed")
    end
  end


#   describe 'on Footer Navigation Bar ' do
#     context 'without page object' do
#       before(:each) do
#         visit('/')
#       end

#       it 'clicks Mobile button successfully' do
#         click_link('Mobile')
#         expect(page).to have_content('Meet people on the go.')
#       end

#       it 'clicks Company button successfully' do
#         find('.footer_nav').find_link('Company').click
#         expect(page).to have_content('A reverence for')
#       end
#     end

#     context 'with page object' do
#       before(:each) do
#         visit('/')
#         @footer = FooterNavigationBar.new
#       end

#       it 'clicks Mobile button successfully' do
#         @footer.click_mobile
#         expect(page).to have_content('Meet people on the go.')
#       end

#       it 'clicks Jobs button successfully' do
#         @footer.click_jobs
#         expect(page).to have_content('Where big ideas meet opportunity.')
#       end

#       it 'clicks Advertise button successfully' do
#         @footer.click_advertise
#         switch_to_window(windows.last)
#         expect(current_url).to eql('http://x.tagstat.com/pdf/Advertising_on_hi5.pdf')
#         current_window.close
#         switch_to_window(windows.first)
#       end

#       it 'clicks Privacy button successfully' do
#         @footer.click_privacy
#         expect(page).to have_content('PRIVACY POLICY')
#       end

#       it 'clicks Terms button successfully' do
#         @footer.click_terms
#         expect(page).to have_content('Terms of Service')
#       end

#       it 'clicks Report Abuse button successfully' do
#         @footer.click_report_abuse
#         expect(page).to have_content('Online Safety & Security')
#       end

#       it 'clicks Support button successfully' do
#         @footer.click_support
#         expect(page).to have_content(' Powered by Zendesk')
#       end
#     end
#   end
end
