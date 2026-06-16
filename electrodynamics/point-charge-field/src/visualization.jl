module Visualization

using GLMakie

function create_figure(
    xs,
    ys,
    pos,
    V_obs,
    pts_obs,
    vecs_obs
)

    fig = Figure(size=(1200,800))

    ax = Axis(fig[1,1])

    deregister_interaction!(ax, :rectanglezoom)
    deregister_interaction!(ax, :scrollzoom)
    deregister_interaction!(ax, :limitreset)

    heatmap!(ax, xs, ys, V_obs,
        colormap=:plasma)

    arrows2d!(ax,
        pts_obs,
        vecs_obs)

    scatter!(
        ax,
        @lift([$pos]),
        color=:red,
        markersize=20
    )

    return fig, ax

end

end