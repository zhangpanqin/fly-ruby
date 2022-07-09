require 'json'

describe 'validate demo' do
  demo = JSON.parse(File.read(Dir.pwd + '/json/demo.json'))
  print demo
  context 'demo2' do
    it 'validate name' do
      expect(demo.dig('name')).to eq('zpq')
    end
    it 'validate age' do
      expect(demo.dig('age')).to eq(18)
    end
  end
  context 'demo1' do
    it 'validate name' do
      expect(demo.dig('name')).to eq('zpq')
    end
    it 'validate age' do
      expect(demo.dig('age')).to eq(18)
    end
  end
end