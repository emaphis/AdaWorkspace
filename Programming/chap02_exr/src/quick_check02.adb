with Ada.Text_IO; use Ada.Text_IO;

procedure quick_check02 is

--  Quick check pg 103-104

   --  1 Last name in EBN.
   Last_Name : constant String := "Maphis3";

   --  2 Define Pi.
   Pi : constant Float := 3.14159;

   --  3 Which are reserved words
   --  begin : constant String := "begin";
   --  procedure
   --  integer : constant String := "integer";
   --  Max_int : constant Integer := 3;

   --  4 Declare Count
   Count : Integer;
   Sum   : Float;
   Description : String;

   Toes        : Integer;
   NineFiveInt : Integer;
   NineFiveFlt : Float;
   Res_07      : Integer;

begin
   --  5. Assing 10 to varialbe Toes
   Toes := 10;

   --  6. Divide 9/5
   NineFiveInt := 9 mod 5;
   NineFiveFlt := 9.0 / 5.0;

   --  7. Find result
   Res_07 := 5 / 2;

   --  8. Use a 'Put' statement
   Put ("Problem Solving with Ada 95");

   --  9. Put statements.
   Put (Item => "The answer is ");
   Put (Item => 2 + 2);
   New_Line;

   null;
end quick_check02;
