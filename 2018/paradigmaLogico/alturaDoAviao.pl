:-  initialization (main).

main:-
    readNumber(Limite),
    verifica(Limite, -1),
    halt(0).

verifica(Limite, Dif) :-
    readNumber(NovaAltura) -> (
        NovaAltura == Limite, writeln("OK");

        Dif < 0, verifica(Limite, abs(Limite - NovaAltura));
        
        NDif is abs(Limite - NovaAltura) -> (
            NDif > Dif, writeln("PERIGO");
            writeln("ADEQUADO")
        ),
        verifica(Limite, abs(Limite - NovaAltura))
    ).

readNumber(Number) :-
    read_line_to_codes(user_input, Codes),
    string_to_atom(Codes, Atom),
    atom_number(Atom, Number).