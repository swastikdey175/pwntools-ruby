# encoding: ASCII-8BIT
# frozen_string_literal: true

require 'test_helper'

require 'pwnlib/context'
require 'pwnlib/shellcraft/shellcraft'

class NopTest < MiniTest::Test
  include ::Pwnlib::Context

  def setup
    @shellcraft = ::Pwnlib::Shellcraft::Shellcraft.instance
  end

  def test_amd64
    context.local(arch: 'amd64') do
      assert_equal("  nop\n", @shellcraft.nop)
    end
  end

  def test_i386
    context.local(arch: 'i386') do
      assert_equal("  nop\n", @shellcraft.nop)
    end
  end
end
