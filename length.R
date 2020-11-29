peak_length <- function(value)
{
  x<-read.table("/home/idiosyncratic/Downloads/A549.atacseq.dex.08h.rep1.dedup.masked.sorted_peaks.trunked_scores.narrowPeak")
  chromosome <- x[1]
  peak <- x[10]
  plt_data <- data.frame("Chromosome" = chromosome, "Peak" = peak)
  
  c1 <- plt_data[which(plt_data$V1 == c(value)),]
  s <- sum(c1$V10)
  v <- sum(plt_data$V10)
  
  print(paste("The total length of genome covered by ATAC-seq peaks is", v, "bp", sep = " "))
  print(paste("The total length of genome covered by ATAC-seq peaks in" , value , "is" , s , "bp", sep = " "))
}

peak_length(value = args)