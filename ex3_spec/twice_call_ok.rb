require '../ex3/twice_call'

describe '#get' do
  let(:target) { Hoge.new }

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
      expect(target).to receive(:get_data).with(key1, bind)
      allow(target).to receive(:get_data).with(key2, bind)
      target.get(opts)
    end
  end

  context '引数のcがnilの場合' do
    it 'バインドがaとbとcであること' do
      pending
    end
  end

end
