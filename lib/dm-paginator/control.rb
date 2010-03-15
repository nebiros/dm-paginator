module DataMapper
  module Paginator
    class Control
      class << self; protected :new; end
      
      def self.factory paginator, kind = nil, options = {}
        if !paginator.is_a?( Main )
          raise ArgumentError, "paginator argument is not an instance of Main"
        end
        
        case kind.downcase!
          when "sliding"
            return DataMapper::Paginator::ControlHelper::Sliding.new paginator, options
          when "all", kind.blank?
            return DataMapper::Paginator::ControlHelper::All.new paginator, options
        end
      end
    end
  end
end