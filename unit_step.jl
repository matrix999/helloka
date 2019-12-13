using Plots

u(x) = (x <= 0 ? 0 : 1)
x = range(-0.1, stop=0.1, length=2001)
plot(x,u.(x))

x = range(-0.1, stop=10, length=2000)
plot(x,u.(x))

u2(x) = u.(x .-1)

plot(x, u2(x))

u1(x) = u.(x) .- u.(x .-2)

plot(x, u1(x))

d = diff(u1.(x))

plot(d)
