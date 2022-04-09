library(deSolve)

# Reproduce the exact layout shown below
# If a parameter or output has no description and no unit, append # []

# Description: example from deSolve manual

## Chaos in the atmosphere
Lorenz <- function(t, state, parameters) {
    with(as.list(c(state, parameters)), {
    dX <- a * X + Y * Z
    dY <- b * (Y - Z)
    dZ <- -X * Y + c * Y - Z
    list(c(dX, dY, dZ))
    })
}

assign_parameters <- function() {
    
    # BEGIN PARAMETERS
    a <- -2.67 # Prandtl []
    b <- -10   # Rayleigh []
    c <- 28    # layer dims []
    # END PARAMETERS

    return(c(a = a, b = b, c = c))
}

run_model <- function(parameters) {

    state <- c(X = 1, Y = 1, Z = 1)

    times <- seq(0, 100, by = 0.01)

    out <- ode(y = state, times = times, func = Lorenz, parms = parameters)

    # BEGIN OUTPUTS
    iv <<- out[, "time"]    # time [h]
    X <<- out[, "X"]        # convection [W/(m2.K)] 
    Y <<- out[, "Y"]        # H temp var [K]
    Z <<- out[, "Z"]        # V temp var [K]
    # END OUTPUTS
}
