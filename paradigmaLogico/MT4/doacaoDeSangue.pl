:-  initialization (main).

doar(o, a).
doar(o, b).
doar(o, ab).
doar(a, ab).
doar(b, ab).

receber(a, o).
receber(b, o).
receber(ab, o).
receber(ab, a).
receber(ab, b).

main:- read(Sangue1), read(Sangue2) -> (
    Sangue1 == Sangue2, writeln("doar_e_receber");

    doar(Sangue1, Sangue2), writeln("doar");
    receber(Sangue1, Sangue2), writeln("receber");
    writeln("incompativel")
    ),

    halt(0).

