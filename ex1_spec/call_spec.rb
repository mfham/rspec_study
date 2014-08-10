require '../ex1/call'
require '../ex1/called'
require 'rspec'

describe "callメソッド" do
  context 'idを100と指定した時' do
    let(:param) { {'id' => 100} }
    let(:expected) { {:name => 'foo', :value => 777} }
    it 'idが100のデータが返されること' do
      called_ins = double("called")
      allow(called_ins).to receive(:get).and_return({:name => 'foo', :value => 777})
      allow(Call).to receive(:new).and_return(called_ins)

      expect(called_ins).to receive(:get).with(param)
      expect(called_ins.get).to eq(expected)

      # 実行
      ins = Call.new
      ins.get(param)
    end
  end
end
