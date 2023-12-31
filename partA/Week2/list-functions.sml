fun sum_list(xs: int list) =
    if null xs
    then 0
    else hd xs + sum_list(tl xs)

fun list_products(ps: int list) =
    if null ps
    then 1
    else hd ps * list_products(tl ps)

fun countdown(x: int) =
    if x = 0
    then []
    else x::countdown(x - 1)

fun append(xs: int list, ys: int list) =
    if null xs
    then ys
    else (hd xs)::append((tl xs), ys)
			      
val test_list = [1, 3, 4, 5, 6, 7, 35]
val res = sum_list(test_list)


val tl_one = []
val tl_two = [5]
val tl_three = [2, 4, 2]

val res_one = list_products(tl_one)
val res_two = list_products(tl_two)
val res_tree = list_products(tl_three)

val countdown_list = countdown(7)

val merged_lists = append([1, 2, 4], [4, 5, 2])

(* functions over pairs of lists *)
fun sum_pair_list(xs: (int * int) list) =
    if null xs
    then 0
    else #1 (hd xs) + #2 (hd xs) + sum_pair_list(tl xs)
 
val res_of_summed_pairs = sum_pair_list([(1,2), (2,4), (3,1)])

(* returns the first elements of every pair of elements in array *)
fun firsts(xs: (int * int) list) =
    if null xs
    then []
    else (#1 (hd xs))::firsts(tl xs)

val firsts_res = firsts([(1,3), (1,5), (1,9), (1,2)])

fun seconds(xs: (int * int) list) =
    if null xs
    then []
    else (#2 (hd xs))::seconds(tl xs)

val seconds_res = seconds([(1,3), (1,5), (1,9), (1,2)])

fun sum_pair_list_using_existing_sum_pair_function(xs: (int*int) list) =
    (sum_list(firsts xs)) + (sum_list(seconds xs
			    ))

val res_nine = sum_pair_list_using_existing_sum_pair_function([(1,2), (2,4), (3,1)])



fun factorial(n: int) =
    if n = 0
    then 1
    else list_products(countdown(n
		      ))

val res_of_factorial = factorial(3)
				
