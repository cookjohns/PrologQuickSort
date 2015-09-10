quickSort([], []).
quickSort([H | T], S) :- partition(H, T, L, R),
quickSort(L, SL),
quickSort(R, SR),
append(SL, [H | SR], S).

partition(P, [], [], []).
partition(P, [H | T], [H | L], R) :- H @=< P,
partition(P, T, L, R).
partition(P, [H | T], L, [H | R]) :- H @> P,
partition(P, T, L, R).

append([], LIST, LIST).
append([H | LIST1], LIST2, [H | LIST3]) :- append(LIST1, LIST2, LIST3).
