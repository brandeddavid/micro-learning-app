require_relative '../spec/spec_helper.rb'
require_relative '../app.rb'

describe 'Auth controller' do
  data = {
    first_name: "David",
    last_name: "Mwangi",
    email: "dmwangihh@gmail.com",
    password: "DMwangi2019"
  }

  it 'should successfully register a user' do
    post '/api/v1/auth/signup', data.to_json
    puts last_response
    expect(last_response).to be_ok
  end
  
end