# File:  main.rb
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

file = File.open("Sample_InOut/Test12.in")

file.each_line { |line|
  n, k = line.split " "

  if k != nil && n != nil
    puts Parasitic.new(k.to_i).find(n.to_i)
  else
    puts
  end
}

file.close
