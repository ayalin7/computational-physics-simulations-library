module Solver

using GLMakie
using LinearAlgebra

k = 1.0
q = 1.0
N = 30
xs = range(-5, 5, length=N)
ys = range(-5, 5, length=N)



function compute_field(x0, y0)
    V    = zeros(Float32, N, N)
    pts  = Point2f[]
    vecs = Vec2f[]
    for (i, x) in enumerate(xs), (j, y) in enumerate(ys)   # ← i=x primero
        dx, dy = x - x0, y - y0
        r2 = dx^2 + dy^2
        if r2 < 0.05
            V[i,j] = NaN; continue    # ← V[i,j]
        end
        r = sqrt(r2)
        V[i,j] = k*q/r               # ← V[i,j]
        ex, ey = dx/r^3, dy/r^3
        mag = hypot(ex, ey)
        push!(pts,  Point2f(x, y))
        push!(vecs, Vec2f(0.25f0*ex/mag, 0.25f0*ey/mag))
    end
    return V, pts, vecs
end

end