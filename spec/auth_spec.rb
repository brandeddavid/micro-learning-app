require_relative '../spec/spec_helper.rb'
require_relative '../app/app.rb'

describe 'Auth controller' do
  it 'should render signup page' do
    visit '/signup'
    expect(current_path).to eq('/signup')
  end

  it 'should successfully register a user' do
    visit '/signup'
    fill_in 'firstName', with: 'David'
    fill_in 'lastName', with: 'Mwangi'
    fill_in 'email', with: 'david.mathenge98@gmail.com'
    fill_in 'password', with: 'David@2019'
    click_on 'Sign Up'

    expect(current_path).to eq('/signin')
  end

  it 'should render signin page' do
    visit '/signin'
    expect(current_path).to eq('/signin')
  end

  it 'should successfully login a user' do
    visit '/signin'
    fill_in 'email', with: 'david.mathenge98@gmail.com'
    fill_in 'password', with: 'David@2019'
    click_on 'Sign In'

    expect(current_path).to eq('/signup')
  end

  it 'should not login a user with wrong credentials' do
    visit '/signin'
    fill_in 'email', with: 'david.mathenge98@gmail.com'
    fill_in 'password', with: 'David@201'
    click_on 'Sign In'

    expect(current_path).to eq('/')
  end
  
end