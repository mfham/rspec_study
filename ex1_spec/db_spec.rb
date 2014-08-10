require '../ex1/db'

describe "get_configメソッド" do
  context "get_configを呼んだ時" do
    let(:config) do
      {
        :db => 'mysql',
        :data => {
          100 => {
            :name => 'foo',
            :value => 777
          },
          101 => {
            :name => 'bar',
            :value => 999
          }
        }
      }
    end
    it "DB情報を返すこと" do
      expect(DB.get_config).to eq(config)
    end
  end

end
