#  Intel NUC Cluster

This project is an experment in setting up a cluster of small computers for use
in testing parallel programming projects. The computers uses in this project
are Intel NUC5i5PYK devices, with 250GB of SSD, and 16GB of ram. I acquired
four of these systems several years ago for this project, but the project was
put on hold until I found time to work on it.

My goal in setting up this clster is to automate the setup as much as possible,
then use the system for experiments in building parallel programs. My current
research is returning me to my CFD roots, so one of my programs will involve
moderm Fortram code, which supports parallel processing.


The documentation begins with the bare machines, ready for loading an operating
system, a network switch with five ports, and my *Macbook* development laptop,
properly configures to run *Ansible*, which will be used to configure each
machine in the cluster automatically.


```{tableofcontents}
```
