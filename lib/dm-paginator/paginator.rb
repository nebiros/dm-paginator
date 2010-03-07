module DataMapper
  module Paginator
    attr_accessor :paginator
    
    ##
    # Limit results.
    #
    # @param [Hash] options
    # @return Collection
    def limit options = {}
      # Remove this key if we come from limit_page method.
      page = options.delete :page
      query = options.dup
      collection = new_collection scoped_query( options = {
        :limit => options[:limit],
        :offset => options[:offset],
        :order => [options[:order]]
      }.merge( query ) )
      options.merge! :count => count( query ), :page => page
      collection.paginator = DataMapper::Paginator::Main.new options
      collection
    end

    ##
    # Limit results by page.
    #
    # @param [Integer, Hash] page
    # @param [Hash] options
    # @return Collection
    def limit_page page = nil, options = {}
      if page.is_a?( Hash )
        options = page
      elsif page.nil?
        options[:page] = DataMapper::Paginator.defaults[:page]
      else
        options[:page] = page.to_i
      end

      options[:page] = options[:page] || DataMapper::Paginator.defaults[:page]
      options[:limit] = options[:limit] || DataMapper::Paginator.defaults[:limit]
      options[:offset] = options[:limit] * ( options[:page] - 1 )
      options[:order] = options[:order] || DataMapper::Paginator.defaults[:order]
      limit options
    end
  end
end