require 'rails_helper' 

RSpec.describe 'Welcome page' do 
  before(:each) do 
    visit root_path
  end 

  it 'contains application information' do 
    expect(page).to have_content('The Four Nations')
    expect(page).to have_content('Search For Members by their Nation')
  end 

  it 'allows users to search for members by group' do 
    select 'Fire Nation', from: :nation

    expect(current_path). to eq('/search')
  end 
end 