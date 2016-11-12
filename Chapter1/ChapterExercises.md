# Chapter Exercises

#### Combinators - No Free Variables
1. λx.xxx - yes
2. λxy.zx - no z is free
3. λxyz.xy(zx) - yes
4. λxyz.xy(xyz) - yes
5. λxy.xy(zxy) - no z is free

##### Normal form or diverge?
1. λx.xxx - Normal form
2. (λz.zz)(λy.yy) - Diverge
3. (λx.xxx)z
  * zzz
  * Normal form

#### Beta Reduce
1. (λabc.cba)zz(λwv.w)
  * (λa.λb.λc.cba)(z)z(λwv.w)
  * (λ[a := z].λb.λc.cba)z(λwv.w)
  * (λb.λc.cbz)(z)(λwv.w)
  * (λ[b :=z].λc.cbz)(λwv.w)
  * (λc.czz)(λwv.w)
  * λ[c := (λwv.w)].czz
  * (λwv.w)zz
  * (λw.λv.w)(z)z
  * (λ[w := z].λv.w)z
  * (λv.z)z
  * λ[v := z].z
  * z

2. (λx.λy.xyy)(λa.a)b
  * (λ[x := (λa.a)].λy.xyy)(b)
  * (λy.(λa.a)yy)
  * λ[y := b].(λa.a)yy
  * (λa.a)(b)b
  * (λ[a := b].a)b
  * bb

3. (λy.y)(λx.xx)(λz.zq)
  * (λ[y := (λx.xx)].y)(λz.zq)
  * (λx.xx)(λz.zq)
  * λ[x := (λz.zq).xx]
  * (λz.zq)(λz.zq)
  * λ[z := (λz.zq)].zq
  * (λz.zq)(q)
  * λ[z := q].zq
  * qq

4. (λz.z)(λz.zz)(λz.zy)
  * (λ[z := (λz.zz)].z)(λz.zy)
  * (λz.zz)(λz.zy)
  * (λ[z := (λz.zy)].zz)
  * (λz.zy)(λz.zy)
  * λ[z := (λz.zy)].zy
  * (λz.zy)(y)
  * λ[z := (y)].zy
  * yy

5. (λx.λy.xyy)(λy.y)y
  * (λ[x := (λy.y)].λy.xyy)(y)
  * (λy.(λy.y)yy)(y)
  * λ[y := y].(λy.y)yy
  * (λy.y)(y)y
  * (λ[y := y].y)y
  * yy

6. (λa.aa)(λb.ba)(c)
  * (λ[a := (λb.ba)].aa)(c)
  * ((λb.ba)(λb.ba))(c)
  * (λ[b := (λb.ba)].ba)(c)
  * ((λb.ba)a)(c)
  * (λ[b:= a].ba)(c)
  * aac

7. (λxyz.xz(yz))(λx.z)(λx.a)
  * Rename free variable z to b
  * (λx.λy.λz.(x)(z)(yz))(λx.b)(λx.a)
  * (λ[x := (λx.b)].λy.λz.(x)(z)(yz))(λx.a)
  * (λy.λz.(λx.b)(z)(yz))(λx.a)
  * (λy.λz.(λ[x := (z)].b)(yz))(λx.a)
  * (λy.λz.b(yz))(λx.a)
  * λ[y := (λx.a)].λz.b(yz)
  * λz.b((λx.a)z)
  * λz.b(λ[x := z].a)
  * λz.ba
