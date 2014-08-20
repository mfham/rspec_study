require '../ex3/twice_call2'

describe '#get' do
  let(:target) { Hoge.new }

  before :each do
    @db = double('db').as_null_object
    allow(Hoge).to receive(:get_data).and_return(@db)
  end

  context '引数のcがnilでない場合' do
    let(:opts) { {} }
    let(:key1) { 'a' }
    let(:key2) { 'b' }
    let(:bind) do
      {
        :a => 'foo',
        :b => 'bar'
      }
    end
    it 'バインドがaとbのみであること' do
      expect(@db).to receive(:get_data).with(key1, bind)
      allow(@db).to receive(:get_data).with(key2, bind)
      p target.get(opts)
      
    end
  end

  context '引数のcがnilの場合' do
    it 'バインドがaとbとcであること' do
      pending
    end
  end

end
