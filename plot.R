args<-commandArgs(TRUE)

plot_distribution <- function(value)
{
  x<-read.table("/home/idiosyncratic/Downloads/A549.atacseq.dex.08h.rep1.dedup.masked.sorted_peaks.trunked_scores.narrowPeak")
  chromosome <- x[1]
  peak <- x[10]
  plt_data <- data.frame("Chromosome" = chromosome, "Peak" = peak)
  
  c1 <- plt_data[which(plt_data$V1 == c(value)),]
  
  library(ggplot2)
  
  ggplot(c1, aes(x=V10)) + ggtitle(value) + theme(plot.title = element_text(hjust = 0.5)) + geom_histogram(aes(y=..density..), colour="black", fill="white")+
    geom_density(alpha = 0.2, fill="#FF6666") + xlab("Peak Lengths") + ylab("Frequncy Density")

}


