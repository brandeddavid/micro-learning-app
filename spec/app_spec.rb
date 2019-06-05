require_relative '../spec/spec_helper.rb'
require_relative '../app.rb'

describe 'MLA API' do
  it 'should load the base url' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.status). to eq(200)
  end
end