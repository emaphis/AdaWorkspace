--  Prep exercise 20 -  pg. 111

with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Integer_Text_IO;

procedure Assignment is

   Ch : String (1 .. 1);
   X  : Integer;
   Y  : Float;

begin  --  Assignment

   Ch := "A";
   Ada.Text_IO.Put (Item => Ch);
   Ch := "B";
   Ada.Text_IO.Put (Item => Ch);
   Ada.Text_IO.New_Line;

   X := 413;
   Y := 21.8;
   Ada.Integer_Text_IO.Put (Item => X);
   Ada.Text_IO.Put (Item => " is the value of X");
   Ada.Text_IO.New_Line;
   Ada.Float_Text_IO.Put (Item => Y);
   Ada.Text_IO.Put (Item => " is the value of Y");
   Ada.Text_IO.New_Line;

end Assignment;

--  :          A         B
