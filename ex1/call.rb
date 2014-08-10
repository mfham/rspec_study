require_relative './called'

class Call

  def initialize

  end

  def get(opts)
    ins = Called.new
    result = ins.get(opts)

    result
  end
end



#ins = Call.new
#opts = {
#  'id' => 100
#}
#result = ins.get(opts)
#puts result
