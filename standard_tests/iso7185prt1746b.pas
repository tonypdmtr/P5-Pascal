{

PRT test 1746b: A term of the form i mod j is an error if j is zero or
                negative.

                ISO 7185 reference: 6.7.2.2

                Divided into:

                A: Divide by zero.

                B: Divide by negative.

}

program iso7185prt1746b(output);

var a: integer;
    b: integer;

begin

   a := 1;
   b := -1;
   a := a mod b

end.
