# ===========================================================
#  Copyright (C) 2019 Daniel Fitze and Matthias Ertl, University of Bern,
#  daniel.fitze@psy.unibe.ch, matthias.ertl@psy.unibe.ch
# 
#  This file is part of Platform Commander.
# 
#  Platform Commander is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
# 
#  Platform Commander is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
# 
#  You should have received a copy of the GNU General Public License
#  along with Platform Commander.  If not, see <http://www.gnu.org/licenses/>.
#  ===========================================================

#  -----------------------------------------------------------
# place this file in: .julia/config/startup.jl
#  -----------------------------------------------------------


#  -----------------------------------------------------------
# make client modules visible to julia
push!(LOAD_PATH, "<path to client modules>")

#  -----------------------------------------------------------
# client ip-address
const LOCAL_ADDRESS="192.168.1.202"

#  -----------------------------------------------------------
# server ip-address
# up to four addresses can be defined. platform commander automatically checks
# which of these addresses is connected. this allows for an easy worflow when 
# multiple instances of the platform commander are used (e.g. server and raspberry
# pie). 
const SERVER_MOOG_ADDRESS1="192.168.1.47"
const SERVER_MOOG_ADDRESS2="192.168.1.49"
const SERVER_MOOG_ADDRESS3="192.168.1.202"
const SERVER_MOOG_ADDRESS4=""

#  -----------------------------------------------------------
#  print this to verify that startup file has been loaded
println("====> setup complete")

