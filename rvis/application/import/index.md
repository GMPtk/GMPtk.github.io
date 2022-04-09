[RVis Documentation](../../index.md) > Application

# Import

## Import R Simulation

For the required layout, see [example R script](./r_import_example.R).

Ensure the script meets these requirements:

* Define a function named `assign_parameters` that returns a list or vector with named elements
* Define a function named `run_model` whose sole formal is the parameter list/vector
* In `assign_parameters`, enclose the parameter assignments in a block bracketed by `# BEGIN PARAMETERS` and `# END PARAMETERS`
* In `run_model`, assign the outputs of interest to the outer environment and bracket the assignments with `# BEGIN OUTPUTS` and `# END OUTPUTS`
* For all parameter and output assignments, append `# description [unit]` (or `# []` if none)
* When assigning the outputs, ensure the first output is the independent variable (usually `time`)

## Import MCSim Simulation

For the required layout, see [example MCSim .in file](./mcsim_import_example.in).

Ensure the .in file meets these requirements:

* Define a single `Simulation {}` block
* Assign parameters at the beginning of the `Simulation {}` block
* Define a single `PrintStep()` closure at the end of the `Simulation {}` block
* For all parameters and outputs, append `# description [unit]` (or `# []` if none)
