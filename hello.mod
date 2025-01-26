(* A minimal Modula-2 program demonstrating basic output.
   Note how Modula-2's module system influenced later languages. *)

MODULE Hello;   (* The main module must match the filename *)

FROM InOut IMPORT (* Selective import of only what we need *)
  WriteLn,  (* Procedure to write a line break *)
  WriteString;  (* Procedure to write a string *)

BEGIN
  WriteString("Hello, World!");  (* Output our message *)
  WriteLn  (* Add a line break *)
END Hello.  (* Module name must match in END statement *)
