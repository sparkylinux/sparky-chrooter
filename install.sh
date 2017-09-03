#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /opt/sparky/sparky-chrooter-help
	rm -f /usr/bin/sparky-chrooter
	rm -f /usr/share/applications/sparky-chrooter.desktop
	rm -f /usr/share/applications/sparky-chrooter-help.desktop
	rm -f /usr/share/menu/sparky-chrooter
	rm -f /usr/share/menu/sparky-chrooter-help
	rm -rf /usr/share/sparky/sparky-chrooter
else
	if [ ! -d /opt/sparky ]; then
		mkdir /opt/sparky
	fi
	cp opt/* /opt/sparky/
	cp bin/* /usr/bin/
	cp share/sparky-chrooter.desktop /usr/share/applications/
	cp share/sparky-chrooter-help.desktop /usr/share/applications/
	cp share/sparky-chrooter /usr/share/mrnu/
	cp share/sparky-chrooter-help /usr/share/menu/
	if [ ! -d /usr/share/sparky/sparky-chrooter ]; then
		mkdir -p /usr/share/sparky/sparky-chrooter
	fi
	cp lang/* /usr/share/sparky/sparky-chrooter/
fi
