require_relative '../spec/spec_helper.rb'
require_relative '../app/app.rb'

describe 'Auth controller' do
  data = {
    firstName: "David",
    lastName: "Mwangi",
    email: "dmwangihh@gmail.com",
    password: "DMwangi2019"
  }

  it 'should successfully register a user' do
    visit '/signup'
  end
  
end