open CallCC
let now () =
 let s = ref None in
 callcc (fun k -> s := Some k);
 s

 let past_travel_to date =
 match !date with
 | None -> assert false
 | Some date -> throw date ()

 let cake = ref `Cake 
 let eat () =
 assert (!cake = `Cake);
 Printf.printf "I am eating the cake! Miamee!\n";
 cake := `NoMoreCake

 let _ =
 let t = now () in
 Printf.printf "I am in front of the cake\n.";
 eat ();
 past_travel_to t
