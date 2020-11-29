peak_length <- function()
{
  x<-read.table("/home/idiosyncratic/Downloads/A549.atacseq.dex.08h.rep1.dedup.masked.sorted_peaks.trunked_scores.narrowPeak")
  chromosome <- x[1]
  peak <- x[10]
  plt_data <- data.frame("Chromosome" = chromosome, "Peak" = peak)
  
  s <- sum(plt_data$V10)
  
  print(paste("The total length of genome covered by ATAC-seq peaks" , "is" , s , "bp", sep = " "))
}

peak_length()