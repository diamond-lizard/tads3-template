/*
Copyright (C) <year>  <name of author>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

#include <adv3.h>
#include <en_us.h>

gameMain: GameMainDef
  initialPlayerChar = me
;

versionInfo: GameID
  name = 'My First Game'
  byline = 'by Bob Author'
  authorEmail = 'Bob Author <example@example.com>'
  desc = 'This is an example of how to start a new game project. '
  version = '1'
  IFID = 'b8563851-6257-77c3-04ee-278ceaeb48ac'
;

firstRoom: Room 'Starting Room'
  "This is the boring starting room."
;

+me: Actor
;
