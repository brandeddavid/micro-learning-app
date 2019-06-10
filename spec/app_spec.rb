require_relative '../spec/spec_helper.rb'
require_relative '../app/app.rb'

describe 'MLA API' do
  it 'should load the base url' do
    visit '/'
    expect(current_path).to eq('/')
  end
end