[RVis Documentation](../../../index.md) > Modules > Estimation

# Iteration Options

Options can be set initially or during a simulation by interrupting iteration.

## Iterations

Enter a value greater than zero to extend the simulation by that number of iterations.

## Likelihood

### Target accept rate

Enter a value greater than zero and less than 1.

It is recommended that a simulation be run beyond its initial burn-in before any target is set. A properly configured MCMC simulation will not require a target, and will acquire a satisfactory accept rate and converge to a solution if allowed to run for sufficient iterations. However, in practice, acquiring the correct configuration for a given model, selected parameters, and set of observations, is a matter of trial and error. Set a target accept rate if it evident that almost all proposals are being rejected.

The optimal accept rate is likely to be in the range 0.2 to 0.45.

After the simulation has been resumed, allow for a significant number of iterations to occur for adaptation and for the target accept rate to take noticeable effect.

### Approximation

By default, a piecewise linear interpolation method is used to estimate the model's output at points that coincide with the simulation's observations.

Unchecking this option will result in an alternative strategy in which a value for the output nearest to each observation is selected.

One reason for disabling approximation is efficiency. If the model produces output at sufficiently frequent intervals that there will be a value close to or coincident with any observation, the cost of using approximation can be dispensed with.

A second reason is to work around an error condition. If your model generates duplicate values for the independent variable, interpolation will fail, and approximation must be disabled for an MCMC simulation to run. (It is recommended that, instead, the R code in the model be revised to eliminate duplicates.)
