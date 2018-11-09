:- initialization (main).

readNumber(Number) :-
    read_line_to_codes(user_input, Codes),
    string_to_atom(Codes, Atom),
    atom_number(Atom, Number).

converteSeg(Anos) :-
    readNumber(Segundos),
    Anos is (Segundos / 31557600).

paridade("Terra", 1).
paridade("Mercurio", 0.2408467).
paridade("Venus", 0.61519726).
paridade("Marte", 1.8808158).
paridade("Jupter", 11.862615).
paridade("Saturno", 29.447498).
paridade("Urano", 84.016846).
paridade("Netuno", 164.79132).

main:-
    read_line_to_string(user_input, Planeta),
    converteSeg(Anos),
    paridade(Planeta, Fator), Terrestre is round(Anos * Fator), format('~w Anos', [Terrestre]),
    halt(0).