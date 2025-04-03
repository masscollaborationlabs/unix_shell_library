#!/bin/bash
# Copyright (C) 2025 Mert Gör and contributors
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

# Check network connection by pinging a reliable server (e.g., Google DNS)
PING_TARGET="8.8.8.8"
PING_COUNT=1

if ping -c $PING_COUNT $PING_TARGET &> /dev/null; then
    echo "Network is UP"
else
    echo "Network is DOWN"
fi