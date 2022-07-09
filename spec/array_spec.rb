require 'json'

users = JSON.parse(File.read(Dir.pwd + '/json/array.json'))
describe 'validate demo' do
  it 'should include name=>zpq,age=>18 ' do
    expect(users).to include(a_hash_including('name' => "zpq", 'age' => 18))
    expect([:a => 1, :b => 2, :c => 'zpq']).to include(a_hash_including(:a => 1, :b => 2))
  end
end