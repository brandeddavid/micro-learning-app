require_relative '../spec/spec_helper.rb'
require_relative '../app/app.rb'

describe 'Auth controller' do
  it 'should render signup page' do
    visit '/signup'
    expect(current_path).to eq('/signup')
  end

  it 'should successfully register a user' do
    visit '/signup'
  end

  it 'should render signin page' do
    visit '/signin'
    expect(current_path).to eq('/signin')
  end

  it 'should successfully login a user' do
    visit '/signup'
  end
  
end