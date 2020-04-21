pro extract_dah
	
	g=file_search('compiledData/fl_???_000_proc_man.sav') & model_n=n_elements(g)
	
	for model_i = 0, model_n - 1 do begin
		
		f=file_search('compiledData/fl_'+string(model_i, format='(I3.3)')+'_???_proc_man.sav') & loop_n=n_elements(f) ;& print, model_i & print, loop_n
		
		for loop_i = 0, loop_n - 1 do begin
			restore, 'compiledData/fl_'+string(model_i, format='(I3.3)')+'_'+string(loop_i, format='(I3.3)')+'_proc_man.sav'
			
			write_csv, 'extractedData/fl_'+string(model_i, format='(I3.3)')+'_'+string(loop_i, format='(I3.3)')+'_d.csv', d_ave
			write_csv, 'extractedData/fl_'+string(model_i, format='(I3.3)')+'_'+string(loop_i, format='(I3.3)')+'_alpha_h.csv', [best_ind_man, best_ind_man_h]

		end
	end
end
