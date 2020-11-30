#!/bin/bash
for i in `seq 1 22`;
  do
  gnome-terminal --title="Chromosome ${i}" --command="bash -c './plot_bash.R chr${i} ; $SHELL'" 
done 
