(* *)
fun digit(c:string):int = ord(c)-ord("0");

(* Store values as a list of characters *) 
fun SumNext(V) = if V=[] then (print("\n Sum="); 0)
                        else (print(hd(V));
                        SumNext(t1(V))+digit(hd(V)));

fun SumValues(x:string):int = SumNext(explode(x));

fun ProcessData() = 
    (let val infile = open_in("data.sml");
        val count = digit(input(infile,1))
    in
        print(SumValues(input(infile,count)))
    end;
    print("\n"));
