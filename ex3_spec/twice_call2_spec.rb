require '../ex3/twice_call2'

describe '#get' do
  let(:target) { Hoge.new }

  let(:opts) do
    {
      'a' => 100,
      'b' => 10,
      'c' => 'hoge_'
    }
  end
  let(:bind) do
    {
      :a => 100,
      :b => 10,
      :c => 'hoge_c'
    }
  end
  let(:sql) do
    {
      'a' => 'sql_a',
      'b' => 'sql_b'
    }
  end

  before :each do
    @db = double('db').as_null_object
    ds_a = double('a')
    ds_b = double('b')
    allow(DB).to receive(:new).and_return(@db)
    allow(SQL).to receive(:get_sql).and_return(sql)
    allow(@db).to receive(:get_data).with(sql['a'], bind).and_return(ds_a)
    allow(@db).to receive(:get_data).with(sql['b'], bind).and_return(ds_b)
  end

  context '全パラメータ渡されたとき' do
    it 'get_dataが適切な引数で呼ばれること' do
      expect(@db).to receive(:get_data).with(sql['a'], bind)
      p "all:#{bind}"
      target.get(opts)
    end
  end
  context 'パラメータなし' do
    let(:opts) { {} }
    let(:bind) do
      {
        :a => 30,
        :b => 0
      }
    end
    it 'get_dataが適切な引数で呼ばれること' do
      expect(@db).to receive(:get_data).with(sql['a'], bind)
      p "a,b:#{bind}"
      target.get(opts)
    end
  end

end
