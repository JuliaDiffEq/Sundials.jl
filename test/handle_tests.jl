h1 = Sundials.Handle(Sundials.CVodeCreate(Sundials.CV_BDF, Sundials.CV_NEWTON))
h2 = h1

@test !isempty(h1)
@test !isempty(h2)

empty!(h1)

@test isempty(h1)
@test isempty(h2)

h = Sundials.Handle(h1.ptr_ref[])
@test isempty(h)