require "dm-core"
require "dm-paginator/paginator"
require "dm-paginator/defaults"
require "dm-paginator/main"

DataMapper::Model.append_extensions DataMapper::Paginator
DataMapper::Collection.send :include, DataMapper::Paginator
DataMapper::Query.send :include, DataMapper::Paginator