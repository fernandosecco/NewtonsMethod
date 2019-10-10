function paul_function(p::Poly, x_0; tolerance = 1E-7, maxiter = 100)
    p´ = polyder(p)
    x_old = x_0
    normdiff = Inf
    iter = 1
    while normdiff > tolerance && iter <= maxiter
        x_new = x_old - (p(x_old)/p´(x_old)) 
        normdiff = norm(x_new - x_old)
        x_old = x_new
        iter = iter + 1
    end
    return x_old
end

#I can't run your damn code.