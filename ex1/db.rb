module DB

module_function
  def get_config
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
end
