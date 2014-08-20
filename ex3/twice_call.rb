class Hoge
  def get(opts)
    key1 = 'a'
    key2 = 'b'
    bind = {
      :a => 'foo',
      :b => 'bar'
    }
    bind[:c] = 'c' unless opts['c'].nil?

    a = get_data(key1, bind)

    unless a == 0
      b = get_data(key2, bind)
    end

    a + b
  end

  def get_data(key, bind)

    10
  end
end
