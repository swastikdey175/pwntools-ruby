# encoding: ASCII-8BIT

# require this file would also require all things in pwnlib, but would not
# pollute anything. `include Pwn` in a class to use all pwnlib functions in
# that class instance.

require 'pwnlib/context'
require 'pwnlib/dynelf'

require 'pwnlib/util/packing'
require 'pwnlib/util/cyclic'
require 'pwnlib/util/fiddling'

module Pwn
  include Pwnlib::Context

  include Pwnlib::Util::Packing::ClassMethod
  include Pwnlib::Util::Cyclic::ClassMethod
  include Pwnlib::Util::Fiddling::ClassMethod
end