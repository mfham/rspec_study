require 'sequel'

class Test

  def get
    begin
      db = Sequel.mysql('***', :host=>'***', :user=>'***', :password=>'***')

      sql = <<SQL
SELECT
    *
FROM
    hoge
WHERE
    name = :name
SQL

      bind = {:name => 'test'}
      result = []
      db.fetch(sql, bind).each do |row|
        result << row
      end

      result

    rescue Sequel::DatabaseError => e
      raise Sequel::DatabaseError.new(e.message)
    end

  end

end
