module DataMapper
  module Paginator
    @defaults = {
      :page => 1,
      :limit => 10,
      :order => :id.desc
    }

    def self.defaults
      @defaults
    end
  end
end
