Hot-Stove-analysis-on-octave
============================

An analysis of Blast  Furnace Hot Blast Stove is done by the program.

It is designed to be run on Octave. May also run on Matlab, although has not been tested for the same.

The concept is based on the Heat Equation, where,


∂T/∂θ = α (∂^2)T / (∂x)^2 (T= temperature of the surface, θ=time, α = thermal diffusivity, x = Distance along x direction)

so we get, (Thickness of chequer is broken into elements, each node is represented by i)

(T(i,θ+1)-T(i,θ))/del(θ) = α (T(i+1) -2T(i) + T(i-1))/(del(x))^2 (i=node)

now at x=0, we have,

hA(T(0)-t) = k A ∂T/∂x (t=inlet temperature of the gas)

and at x=1/2d, (d = thickness of chequer)

0= k A ∂T/∂x

from the above,
we find, for (i=0)
T(i,(j+1))= T(i,j)+2α(del(θ))(T((i+1),j)-T(i,j))/(del(x))^2+2hα(del(θ))(t-T(i,j))/(k(del(x)))

for i anywhere between the i=0 and i=1/2d

T(i,(j+1))=(1/R)(T((i+1),j)+T((i-1),j))+(1-2/R)T(i,j); where R = R=((del(x))^2)/(αθ)

at i=1/2d

T(i,(j+1))=T(i,j)+2α(del(θ))/((del(x))^2)(T((i-1),j)-T(i,j))


I DO NOT CLAIM AY CREDIT TO THE DERIVATION OF THE ABOVE.
