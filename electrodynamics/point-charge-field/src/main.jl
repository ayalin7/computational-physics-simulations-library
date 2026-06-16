using GLMakie

include("solver.jl")
include("visualization.jl")

using .Solver
using .Visualization


pos = Observable(Point2f(0.0,0.0))

field_data = @lift Solver.compute_field(
    $pos[1],
    $pos[2]
)

V_obs    = @lift $field_data[1]
pts_obs  = @lift $field_data[2]
vecs_obs = @lift $field_data[3]

fig, ax = Visualization.create_figure(
    Solver.xs,
    Solver.ys,
    pos,
    V_obs,
    pts_obs,
    vecs_obs
)

# ── Drag ─────────────────────────────────────────────────────
dragging = Ref(false)

on(events(fig).mousebutton) do event
    if event.button == Mouse.left
        if event.action == Mouse.press
            mp = mouseposition(ax)   # ← ax, no ax.scene
            p  = pos[]
            if hypot(mp[1]-p[1], mp[2]-p[2]) < 0.4
                dragging[] = true
            end
        elseif event.action == Mouse.release
            dragging[] = false
        end
    end
    return Consume(false)
end

on(events(fig).mouseposition) do _
    if dragging[]
        mp = mouseposition(ax)       # ← ax, no ax.scene
        pos[] = Point2f(mp[1], mp[2])
    end
    return Consume(false)
end

display(fig)