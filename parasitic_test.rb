# File:  parasitic_test.rb
#  Copyright (C) 2020 Daniel W. Crompton, Special Brands Holding <test12@specialbrands.net>

#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.

#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.

#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 

require_relative "parasitic"
require "test/unit"
 
class TestParasiticNumber < Test::Unit::TestCase
  def test_parasitic
    assert_equal(105263157894736842, Parasitic.new(2).find(2))
    assert_equal(128205, Parasitic.new(5).find(4))
    assert_equal(1034482758620689655172413793, Parasitic.new(3).find(3))
    assert_equal(102564, Parasitic.new(4).find(4))
    assert_equal(102040816326530612244897959183673469387755, Parasitic.new(5).find(5))
    assert_equal(1016949152542372881355932203389830508474576271186440677966, Parasitic.new(6).find(6))
    assert_equal(1014492753623188405797, Parasitic.new(7).find(7))
    assert_equal(1012658227848, Parasitic.new(8).find(8))
    assert_equal(10112359550561797752808988764044943820224719, Parasitic.new(9).find(9))
    assert_equal(0, Parasitic.new(1).find(2))
  end
 
end
