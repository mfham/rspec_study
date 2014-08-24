class Hoge
  def get(opts)
    bind = {
      :a => 30,
      :b => 0
    }
    opts.each_key do |key|
      bind[key.to_sym] = opts[key]
    end

    bind[:c] += 'c' unless opts['c'].nil?

    db = DB.new
    sql = SQL.get_sql

    a = db.get_data(sql['a'], bind)
    unless a == 0
      b = db.get_data(sql['b'], bind)
    end

    10
  end

end

class DB

  def get_data(key, bind)

    10
  end

end

class SQL
  class << self

    def get_sql
      {
        'a' => 'AAAAAA',
        'b' => 'BBBBBB'
      }
    end

  end
end

#ins = Hoge.new
#p ins.get({'c' => 'hoge_'})
