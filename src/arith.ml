type term =
    Constant of int
  | Add of term * term


let rec eval = function
  | Constant x -> x
  | Add (x, y) -> (eval x) + (eval y)

let _ =
  (* 3 + 5 *)
  let _ = Printf.printf "%d\n" (eval (Add (Constant 3, Constant 5))) in
  (* (1 + 2) + 4 *)
  let _ = Printf.printf "%d\n" (eval (Add (Add (Constant 1, Constant 2), Constant 4))) in
  ()
