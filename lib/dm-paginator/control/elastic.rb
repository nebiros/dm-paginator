module DataMapper
  module Paginator
    module ControlHelper
      class Elastic
        include DataMapper::Paginator::ControlHelperAbstract

        attr_reader :paginator, :options

        def initialize paginator, options = {}
          if !paginator.is_a?( Main )
            raise ArgumentError, "paginator argument is not an instance of Main"
          end

          @paginator = paginator
          @options = options
        end

        def draw
          p "All baby!"
        end
      end
    end
  end
end
