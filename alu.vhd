-- alu - An arithmetic Logic Unit
-- Copyright (C) 2018  Digital Systems Group - UFMG
-- 
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
-- 
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, see <https://www.gnu.org/licenses/>.
--

library ieee;
use ieee.std_logic_1164.all;

entity alu is
    generic (
        W       :       integer := 32
    );
    port (
        CONTROL : in    std_logic_vector(3 downto 0);
        SRC1    : in    std_logic_vector(W - 1 downto 0);
        SRC2    : in    std_logic_vector(W - 1 downto 0);
        RESULT  : out   std_logic_vector(W - 1 downto 0);
        ZERO    : out   std_logic
    );
end alu;


-- Define the architecture for this entity.
-- Consider the following operations to calculate the value or RESULT:
--      CONTROL             RESULT
--      0000                SRC1 and SRC2 
--      0001                SRC1 or SRC2
--      0010                SRC1 + SRC2
--      0110                SRC1 - SRC2
--      0111                SRC1 < SRC2 ? 1 : 0
--      1100                NOT( SRC1 or SRC2 )

-- Consider the following behavior for the ZERO output:
--  ZERO <= RESULT == 0 ? 1 : 0

architecture arch of alu is
begin
    
end arch;
