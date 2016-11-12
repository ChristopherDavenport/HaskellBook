# Intermission Equivalence Exercises

1.   λxy.xz
  *  λxz.xz
      - This is not the same as z is a bound rather than a free variable.
  *  λmn.mz
      - This is the same as the variables letters mean nothing and the free
      variable is untouched.
      - [m := x]
      - [n := y]
      - λ[m := x][n:=y].[m := x]z
      - λxy.xz
  * λz(λx.xz)
      - Nope 2 free variables
2.  λxy.xxy
  * λmn.mnp
      - Nope contains a free variable
  * λx(λy.xy)
      - Uncurry result
      - λxy.xy
  * λa(λb.aab)
      - Uncurry result
      - λab.aab
      - [a := x]
      - [b := y]
      - λxy.xxy
3. λxyz.zx
  * λx.(λy.(λz.z))
      - λx.x
  * λtos.st
      - [t := x]
      - [o := y]
      - [s := z]
      - λxyz.zx
      - The above shows why this is correct.
  * λmnp.mn
      - [m := x]
      - [n := y]
      - [p := z]
      - λxyz.xy
      - Not Correct
      
