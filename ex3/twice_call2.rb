class Hoge
  def get(opts)
    key1 = 'a'
    key2 = 'b'
    bind = {
      :a => 'foo',
      :b => 'bar'
    }
    bind[:c] = 'c' unless opts['c'].nil?


    db = get_db
    a = db.get_data(key1, bind)

    unless a == 0
      b = db.get_data(key2, bind)
    end

    10
  end

  def get_data(key, bind)

    10
  end

  def get_db
    Hoge.new
  end
end

#ins = Hoge.new
#p ins.get({})
