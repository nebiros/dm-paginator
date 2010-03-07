module DataMapper
  module Paginator
    class Main
      attr_reader :count, :page, :limit, :offset, :page_count, :next_page,
        :previous_page

      def initialize options = {}
        @count = options[:count]
        @page = options[:page]
        @limit = options[:limit]
        @offset = options[:offset]
        @page_count = calculate_page_count
        @next_page = page.to_i + 1 unless page.to_i + 1 >= page_count
        @previous_page = page.to_i - 1 unless page.to_i - 1 <= 1
      end

      private
      def calculate_page_count
        @page_count = count.to_i / limit.to_i
        @page_count.ceil
      end
    end
  end
end