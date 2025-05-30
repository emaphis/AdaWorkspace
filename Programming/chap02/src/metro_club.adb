-- Example from "Elementary Pascal" by Henry Ledgard
-- Ported from Pascal to ADA.

with Ada.Text_IO; use Ada.Text_IO;

procedure metro_club is

   -- This programme examines the clues given for the murder
   -- at the Metropolitan Club. The three arrays HAIR, ATTIRE, and
   -- ROOM are used to establish the facts as they are determined.
   -- The programme outputs the name of the murderer.

   -- const
   UNKNOWN       : constant Integer := 0;

   RED           : constant Integer := 1;
   BLACK         : constant Integer := 2;
   GREY          : constant Integer := 3;
   BROWN         : constant Integer := 4;

   PINCENES      : constant Integer := 1;
   GOLDWATCH     : constant Integer := 2;
   RUBYRING      : constant Integer := 3;
   TATTEREDCUFFS : constant Integer := 4;

   COLWOODLEY    : constant Integer := 1;
   MRHOLMAN      : constant Integer := 2;
   MRPOPE        : constant Integer := 3;
   SIRRAYMOND    : constant Integer := 4;

   -- var
   SUSPECT, MURDERER : Integer;

   HAIR   : array (COLWOODLEY .. SIRRAYMOND) of integer;
   ATTIRE : array (COLWOODLEY .. SIRRAYMOND) of integer;
   ROOM   : array (COLWOODLEY .. SIRRAYMOND) of integer;

begin
   -- Assume nothing is known
   MURDERER := UNKNOWN;
   for SUSPECT in COLWOODLEY .. SIRRAYMOND loop
      HAIR (SUSPECT) := UNKNOWN;
      ATTIRE (SUSPECT) := UNKNOWN;
      ROOM (SUSPECT) := UNKNOWN;
   end loop;

   -- Establish know clues.
   ROOM (SIRRAYMOND) := 10;
   ATTIRE (MRPOPE)   := GOLDWATCH;
   ATTIRE (MRHOLMAN) := RUBYRING;
   ROOM (MRHOLMAN)   := 12;

   -- Repeatedly try the remaining clues
   SUSPECT := COLWOODLEY;
   while MURDERER = UNKNOWN loop
      if (ROOM (SUSPECT) = 14) then
         HAIR (SUSPECT) := BLACK;
      end if;
      if (ATTIRE (SIRRAYMOND) /= UNKNOWN) and (ATTIRE (SIRRAYMOND) /= PINCENES)
      then
         ATTIRE (COLWOODLEY) := PINCENES;
      end if;
      if (ATTIRE (COLWOODLEY) /= UNKNOWN) and (ATTIRE (COLWOODLEY) /= PINCENES)
      then
         ATTIRE (SIRRAYMOND) := PINCENES;
      end if;
      if (ATTIRE (SUSPECT) = PINCENES) then
         HAIR (SUSPECT) := BROWN;
      end if;
      if (ATTIRE (SUSPECT) = TATTEREDCUFFS) then
         HAIR (SUSPECT) := RED;
      end if;
      if (ROOM (SUSPECT) = 16) then
         ATTIRE (SUSPECT) := TATTEREDCUFFS;
      end if;
      if (ROOM (SUSPECT) = 12) then
         HAIR (SUSPECT) := GREY;
      end if;
      if (ATTIRE (SUSPECT) = GOLDWATCH) then
         ROOM (SUSPECT) := 14;
      end if;

      if (ROOM (SUSPECT) = 10) and (SUSPECT /= COLWOODLEY) then
         ROOM (COLWOODLEY) := 16;
      end if;
      if (ROOM (SUSPECT) = 16) and (SUSPECT /= COLWOODLEY) then
         ROOM (COLWOODLEY) := 10;
      end if;

      if (HAIR (SUSPECT) = BROWN) then
         MURDERER := SUSPECT;
      end if;

      if (SUSPECT = SIRRAYMOND) then
         SUSPECT := COLWOODLEY;
      else
         SUSPECT := SUSPECT + 1;
      end if;
   end loop; -- remaining clues

   -- Print the name of the murderer
   if MURDERER = COLWOODLEY then
      Put ("THE MURDERER IS COLONEL WOODLEY.");
   elsif MURDERER = MRHOLMAN then
      Put ("THE MURDERER IS MR. HOLMAN.");
   elsif MURDERER = MRPOPE then
      Put ("THE MURDERER IS MR. POPE.");
   else
      Put ("THE MURDERER IS SIR RAYMOND.");
   end if;

end metro_club;

-- THE MURDERER IS SIR RAYMOND.
