with Ada.Text_IO;
with Ada.Directories;

procedure Current_Directory is

   -- Prints the current directory

   Current_Dir : constant String := Ada.Directories.Current_Directory;

begin
   Ada.Text_IO.Put_Line("Current Directory: " & Current_Dir);
end Current_Directory;
