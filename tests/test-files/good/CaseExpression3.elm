
type List a
    = Nil 
    | Cons a (List a)


zip : List a -> List b -> List (a, b)
zip list1 list2 =
    case (list1, list2) of
        (Nil, _) ->
            Nil

        (_, Nil) ->
            Nil

        (Cons x xs, Cons y ys) ->
            Cons (x, y) (zip xs ys)
