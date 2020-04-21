# Solar-Project
Code and scripts for implementing a NN to fit coronal field loops to LFFF generated via magnetograms


Step 1: extract_fl.sh
Shell script to extract the .sav files with the desired data: fl_???_proc_man.sav

Step 2: extract_dah.pro
IDL procedure to extract d(alpha,h), alpha_best, h_best data

Step 3: select_minima_NN.ipynb
Python Jupyter notebook that cleans/preps data and implements simple NN

select_alpha_NN.ipynb:
A simpler, first-step approach to implementing a NN that predicts only alpha_best
