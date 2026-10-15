let rec ft_power nbr pwr =
        if pwr = 0 then 1
        else nbr * ft_power nbr (pwr -1)

let rec count_number n =
  if n = 0 then 0
  else 1 + count_number (n / 10)

  let validate (value : int) : bool =
    let recursions = count_number value in
    let nbrlen = recursions in
    let evolve_value = ref value in
    let final = ref 0 in
  
    let rec ft_while (recursion : int) : unit =
      if recursion = 1 then
        final := !final + ft_power !evolve_value nbrlen;
      if recursion > 1 then begin
        let state = !evolve_value / ft_power 10 (recursion - 1) in
        final := !final + ft_power state nbrlen;
        evolve_value := !evolve_value - (state * ft_power 10 (recursion - 1));
        ft_while (recursion - 1)
      end
    in
  
    ft_while recursions;
    !final = value