require_relative './db'

class Called

  def initialize

  end

  def get(opts)
    # DB情報取得
    db = DB.get_config

    id = opts['id']
    result = db[:data][id]

    result
  end

end
