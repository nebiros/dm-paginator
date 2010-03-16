module DataMapper
  module Paginator
    ##
    # Main class, this object handle pagination attributes.
    #
    class Main
      attr_reader :count, :page, :limit, :offset, :page_count, :next_page,
        :previous_page

      def initialize options = {}
        @count = options[:count].to_i
        @page = options[:page].to_i
        @limit = options[:limit].to_i
        @offset = options[:offset].to_i
        @page_count = calculate_page_count
        @next_page = page.to_i + 1 unless page.to_i + 1 >= page_count
        @previous_page = page.to_i - 1 unless page.to_i - 1 <= 1
      end

      ##
      # Draw pagination controls.
      #
      # @param [String] kind
      # @param [Hash] options
      # @return [String]
      def to_html kind, options = {}
        control = DataMapper::Paginator::Control.factory self, kind.to_s, options
        control.draw
      end

      private

      ##
      # Calculate how many page.
      #
      # @return [Integer]
      def calculate_page_count
        @page_count = count.to_i / limit.to_i
        @page_count.ceil
      end
    end
  end
end