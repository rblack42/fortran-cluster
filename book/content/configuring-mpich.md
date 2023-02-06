# Configuring MPICH

The cluster we have constructed consists of four Intel NUC computers, each with
two cores. These machines have been set up with NFS so all machines share a
common directory named **/home/rblack/nfs**. We have also installed **MPICH**
on all machines. Our goal now is to get these machines set up to run a parallel
problem.

## iUser requirements

The documentation recommends creating a dedicated user for applications. The standard user is already set up with passwordless access on all of these machines, so we will use that user instead. 
