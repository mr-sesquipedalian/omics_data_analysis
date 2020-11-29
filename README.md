# Omics Data Analysis

Part 2: R<br>
 Write a script in R to plot distribution of the length of ATAC-seq peaks for each
chromosome, separately. Save your distribution plots (one plot per chromosome) and
send them to me along with your R script.<br>
Part 3: Bash Script<br>
 Write a wrapper Bash Script that enables you to run a R script (similar to the one you
write in Part 2), in order to plot the distribution of the length of ATAC-seq peaks for the
chromosome of interest. This Bash Script should get the chromosome number as its
input variable, and pass that variable to your R script. R script will then measure the
length of peaks in the sample data and outputs/saves a distribution plot of the
chromosome of choice.<br>
Part 4: Working with Job Submission Command in Linux<br>
 Write a series of Linux commands required in order to submit 22 job (one job per
chromosome) on cluster nodes (i.e. server) with a Linux environment. Here each job is
designated to one chromosome and will run on one cluster node. By submitting each
job on the server, it should run your above R script on one chromosome and provide the
results (i.e. distribution plot) back.<br>
Part 5: Other Bioinformatics Tools Combined with R/Bash Script<br>
 Write a piece of code in R and/or a piece of command in Bash to measure the total
length of the genome (in base pairs) covered by the ATAC-seq peaks in your data
sample. (Hint: Use Bedtools).<br>
