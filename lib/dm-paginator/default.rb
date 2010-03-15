module DataMapper
  module Paginator
    @default = {
      :page => 1,
      :limit => 10,
      :order => :id.desc,
      :page_range => 10,
      :control_class => "pagination-control",
      :control_previous_msg => "&lt; Previous",
      :control_class_disabled => "disabled",
      :control_class_current_page => "current-page",
      :control_next_msg => "Next &gt;"
    }

    def self.default
      @default
    end
  end
end
