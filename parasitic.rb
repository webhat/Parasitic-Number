# File:  parasitic.rb
#  Copyright (C) 2020 Daniel W. Crompton, Special Brands Holding <test10@specialbrands.net>

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

class Parasitic

  def initialize(num)
    raise unless num.is_a?(Numeric)
    @x = num
  end

  def find(y)
    val = @x
    for i in 1 .. 60
      puts val
      partial = val * y
      puts "nlen #{partial.to_s.reverse[val.to_s.length]}"
      puts "len #{partial.to_s.reverse[i-1]}"
      npartial = val + partial.to_s.reverse[i-1].to_i * (10 ** i)
      if partial.to_s[0] == npartial.to_s.reverse[0]
        puts "#{partial.to_s[0]} == #{npartial.to_s.reverse[0]}"
        puts "#{partial} == #{npartial.to_s.reverse}"
        puts npartial.to_s.reverse
        puts npartial
        break
      end
      val = npartial
      if i == 60 
        val = 0
      end
    end
    val
  end
end

