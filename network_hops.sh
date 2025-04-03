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

# Target destination for Ankara (replace with a known IP or domain in Ankara)

TARGET="ankara.gov.tr"

# Run traceroute and count the number of hops
HOPS=$(traceroute -n $TARGET | tail -n +2 | wc -l)

if [ $? -eq 0 ]; then
    echo "The number of network hops between Istanbul and Ankara is: $HOPS"
else
    echo "Failed to calculate network hops. Please check your network connection or the target address."
fi