require '../ex2/sequel'

describe Test do
  let(:target) { Test.new }

  describe '#get' do
    let(:mysql) { double('mysql').as_null_object }
    let(:e_msg) { 'error' }

    before :each do
      allow(Sequel).to receive(:connect).and_return(mysql)
    end

    context 'Sequel::DatabaseErrorが発生したとき' do
      it 'エラーを投げること' do
        # エラーメッセージもあわせて
        allow(mysql).to receive(:fetch).and_raise(Sequel::DatabaseError, e_msg)
        # 例外テストはexpect{}.to
        # expect().toではないので注意
        expect{target.get}.to raise_error(Sequel::DatabaseError, e_msg)
      end
    end
  end
end
