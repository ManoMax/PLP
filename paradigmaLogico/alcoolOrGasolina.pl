:-  initialization (main).

main:-
    getPreco(Preco),
    writeln(Preco),
    halt(0).

getPreco(Preco) :-
    readNumber(Alcool),
    readNumber(Gasolina),
    readNumber(Quantidade) ->(
    Alcool >= (Gasolina * 0.7), Preco is (Gasolina * Quantidade);
    Preco is (Alcool * Quantidade)).

readNumber(Number) :-
    read_line_to_codes(user_input, Codes),
    string_to_atom(Codes, Atom),
    atom_number(Atom, Number).