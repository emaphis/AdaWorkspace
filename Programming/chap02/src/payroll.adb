with Ada.Text_IO;
use  Ada.Text_IO; 
with Ada.Float_Text_IO;
use  Ada.Float_Text_IO;
with Ada.Integer_Text_IO;
use  Ada.Integer_Text_IO;

procedure Payroll is

-- This program computes the wages for each employee and the total payroll 
-- for the company

   -- Constants
   Max_Regular_Hours : constant Float  := 40.0;  -- Maximum normal work hours
   Overtime_Factor   : constant Float  :=  1.5;  -- Overtime pay rate factor
   Minimum_Wage      : constant Float  :=  5.75; -- Minimum hourly pay rate
   Maximum_Wage      : constant Float  := 99.99; -- Maximum hourly pay rate
   Payroll_File_Name : constant String := "Payfile.dat";

   -----------------------------------------------------------------------------
   procedure Calc_Pay (Rate   : in  Float;     -- Hourly pay
                       Hours  : in  Float;     -- Hours this week
                       Pay    : out Float) is  -- Wages earned

   -- Calc_Pay computes an employee's pay from their pay rate and the hours
   -- worked this week, taking overtime into account

   begin   -- Procedure Calc_Pay
      if Hours > Max_Regular_Hours then
         Pay := Max_Regular_Hours * Rate 
                + (Hours - Max_Regular_Hours) * Overtime_Factor * Rate;
      else
         Pay := Hours * Rate;
      end if;
   end Calc_Pay;

---------------
   -- Variables
   Pay_Rate     : Float   range Minimum_Wage .. Maximum_Wage; -- Hourly pay rate
   Hours        : Float   range 0.0 .. 80.0;           -- Hours worked
   Wages        : Float   range 0.0 .. 8_000.00;       -- Wages earned
   Total        : Float   range 0.0 .. Float'Last;     -- Total payroll
   Employee_ID  : Integer range   0 .. 999;            -- Employee ID number
   Payroll_File : Ada.Text_IO.File_Type;               -- Company payroll file

begin     -- Program Payroll

   -- Create the output file
   Create (File => Payroll_File,
           Name => Payroll_File_Name);

   -- Initialize company total wages
   Total := 0.0; 

   Employee_Loop:     -- Repeat for each employee
   loop
      -- Prompt for and get an employee's number
      Put (Item => "Enter employee number: ");
      Get (Item => Employee_ID);
                                                -- An employee number of zero
      exit Employee_Loop when Employee_ID = 0;  -- indicates we are finished and
                                                -- can exit the loop 
      -- Prompt for and get the employee's pay rate
      Put       (Item => "Enter pay rate: ");
      Get (Item => Pay_Rate);

      -- Prompt for and get the number of hours the employee worked this week
      Put       (Item => "Enter hours worked: ");
      Get (Item => Hours);

      -- Determine the employee's wages
      Calc_Pay (Rate  => Pay_Rate,
                Hours => Hours,
                Pay   => Wages);

      -- Add this employee's wages to the company total
      Total := Total + Wages;

      -- Put results in the pay file
      Put (File => Payroll_File,  Item => Employee_ID);
      Put (File => Payroll_File,
           Item => Pay_Rate,
           Fore => 6,
           Aft  => 2,
                             Exp  => 0);
      Put (File => Payroll_File,
           Item => Hours,
           Fore => 6,
           Aft  => 1,
           Exp  => 0);
      Put (File => Payroll_File,
           Item => Wages,
           Fore => 6,
           Aft  => 2,
           Exp  => 0);
      New_Line (File => Payroll_File);

   end loop Employee_Loop;

   -- Display the total payroll on the screen
   New_Line (Spacing => 2);
   Put  (Item => "Total payroll is $");
   Put (Item => Total,
        Fore => 1,
        Aft  => 2,
        Exp  => 0);
   New_Line;

   -- Close the pay file
   Close (File => Payroll_File);
end Payroll;
