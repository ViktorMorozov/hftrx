%                                                                                                                                       
%THIS IS A WIZARD GENERATED FILE. DO NOT EDIT THIS FILE!                                                                                
%                                                                                                                                       
%---------------------------------------------------------------------------------------------------------                              
%This is a filter withfixed coefficients 
%This Model Only Support Single Channel Input Data. 
%Please input:                                                                                                                          
%data vector: 		stimulation(1:n)                                                                                                 
%                                                                                                                                       
%    This Model Only Support FIR_WIDTH to 51 Bits
%                                                                                                                                       
%FILTER PARAMETER                                                                                                                       
%Input Data Type:	Signed
%Input Data Width:	32
%Decimation Factor:   10
%MSB Truncated Bits: 2
%LSB Truncated bits:22
%FIR Width (Full Calculation Width Before Output Width Adjust) :   56
%-----------------------------------------------------------------------------------------------------------

	%MegaWizard Scaled Coefficient Values
	function  output = fir_10ex_2ch_mlab_mat (stimulation, output)
	coef_matrix=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 6 7 7 6 5 0 0 0 -7 -11 -15 -18 -20 -20 -19 -16 -11 -4 0 12 21 29 36 41 43 41 36 27 15 0 -16 -33 -48 -61 -71 -75 -74 -67 -53 -34 -11 15 43 69 92 110 120 121 113 95 68 34 -6 -48 -89 -127 -157 -177 -184 -177 -155 -120 -73 -17 44 106 163 211 246 263 261 238 195 135 60 -25 -112 -196 -269 -326 -360 -368 -348 -300 -225 -128 -17 103 220 327 415 474 500 488 438 351 232 89 -68 -228 -379 -507 -603 -656 -661 -615 -519 -378 -201 0 211 415 597 742 835 868 836 737 577 364 114 -156 -426 -675 -883 -1033 -1108 -1102 -1010 -836 -590 -288 50 398 730 1019 1242 1379 1415 1343 1165 890 535 124 -314 -744 -1135 -1454 -1673 -1773 -1739 -1571 -1275 -869 -380 156 702 1215 1653 1982 2170 2199 2060 1757 1307 741 96 -580 -1237 -1822 -2290 -2598 -2718 -2634 -2344 -1863 -1222 -465 356 1179 1940 2580 3044 3292 3295 3045 2553 1848 977 0 -1010 -1978 -2828 -3490 -3907 -4038 -3865 -3389 -2637 -1657 -517 701 1907 3007 3913 4550 4860 4807 4385 3612 2537 1232 -211 -1685 -3079 -4283 -5199 -5746 -5872 -5552 -4796 -3648 -2182 -502 1272 3006 4567 5829 6687 7060 6905 6216 5029 3418 1492 -610 -2734 -4719 -6407 -7660 -8367 -8457 -7903 -6725 -4993 -2822 -364 2204 4688 6896 8648 9797 10235 9903 8802 6989 4581 1740 -1330 -4402 -7243 -9625 -11353 -12270 -12279 -11348 -9514 -6887 -3640 0 3772 7389 10570 13056 14632 15143 14513 12746 9935 6256 1958 -2655 -7243 -11453 -14948 -17435 -18682 -18545 -16977 -14041 -9903 -4830 831 6671 12252 17137 20922 23267 23928 22777 19816 15186 9159 2127 -5423 -12941 -19852 -25597 -29674 -31681 -31349 -28570 -23414 -16130 -7144 2966 13503 23694 32740 39875 44419 45836 43779 38129 29017 16837 2235 -13915 -30553 -46483 -60446 -71189 -77541 -78494 -73269 -61371 -42640 -17273 14170 50778 91327 134331 178115 220896 260873 296323 325688 347662 361258 365859 361258 347662 325688 296323 260873 220896 178115 134331 91327 50778 14170 -17273 -42640 -61371 -73269 -78494 -77541 -71189 -60446 -46483 -30553 -13915 2235 16837 29017 38129 43779 45836 44419 39875 32740 23694 13503 2966 -7144 -16130 -23414 -28570 -31349 -31681 -29674 -25597 -19852 -12941 -5423 2127 9159 15186 19816 22777 23928 23267 20922 17137 12252 6671 831 -4830 -9903 -14041 -16977 -18545 -18682 -17435 -14948 -11453 -7243 -2655 1958 6256 9935 12746 14513 15143 14632 13056 10570 7389 3772 0 -3640 -6887 -9514 -11348 -12279 -12270 -11353 -9625 -7243 -4402 -1330 1740 4581 6989 8802 9903 10235 9797 8648 6896 4688 2204 -364 -2822 -4993 -6725 -7903 -8457 -8367 -7660 -6407 -4719 -2734 -610 1492 3418 5029 6216 6905 7060 6687 5829 4567 3006 1272 -502 -2182 -3648 -4796 -5552 -5872 -5746 -5199 -4283 -3079 -1685 -211 1232 2537 3612 4385 4807 4860 4550 3913 3007 1907 701 -517 -1657 -2637 -3389 -3865 -4038 -3907 -3490 -2828 -1978 -1010 0 977 1848 2553 3045 3295 3292 3044 2580 1940 1179 356 -465 -1222 -1863 -2344 -2634 -2718 -2598 -2290 -1822 -1237 -580 96 741 1307 1757 2060 2199 2170 1982 1653 1215 702 156 -380 -869 -1275 -1571 -1739 -1773 -1673 -1454 -1135 -744 -314 124 535 890 1165 1343 1415 1379 1242 1019 730 398 50 -288 -590 -836 -1010 -1102 -1108 -1033 -883 -675 -426 -156 114 364 577 737 836 868 835 742 597 415 211 0 -201 -378 -519 -615 -661 -656 -603 -507 -379 -228 -68 89 232 351 438 488 500 474 415 327 220 103 -17 -128 -225 -300 -348 -368 -360 -326 -269 -196 -112 -25 60 135 195 238 261 263 246 211 163 106 44 -17 -73 -120 -155 -177 -184 -177 -157 -127 -89 -48 -6 34 68 95 113 121 120 110 92 69 43 15 -11 -34 -53 -67 -74 -75 -71 -61 -48 -33 -16 0 15 27 36 41 43 41 36 29 21 12 0 -4 -11 -16 -19 -20 -20 -18 -15 -11 -7 0 0 0 5 6 7 7 6 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ];
	INTER_FACTOR  = 1;
	DECI_FACTOR  = 10;
	MSB_RM  = 2;
	MSB_TYPE  = 0;
	LSB_RM  = 22;
	LSB_TYPE  = 0;
	FIR_WIDTH  = 56;
	OUT_WIDTH  = FIR_WIDTH - MSB_RM - LSB_RM ;
	DATA_WIDTH = 32;
            
	data_type= 1;

        % check size of inputs.
        [DX,DY] = size(stimulation);
        [CX,CY] = size(coef_matrix);
        if (CX ~= DY * INTER_FACTOR)
	        fprintf('WARNING : coef_matrix size and input data size is not match\n');
        end
        
        %fill coef_matrix to length of data with the latest coef set
        if (CX < DY * INTER_FACTOR)
            for i= CX +1:DY * INTER_FACTOR
                coef_matrix(i,:) = coef_matrix(CX,:);
            end
        end

        %check if input is integer
       	int_sti=round(stimulation);
	    T = (int_sti ~= stimulation);
	    if (max(T)~=0)
	        fprintf('WARNING : Integer Input Expected: Rounding Fractional Input to Nearest Integer...\n');
	    end
	    
	    %Input overflow check
	    switch  data_type
	    case 1
	        %set max/min for signed
	        maxdat = 2^(DATA_WIDTH-1)-1;
	        mindat = -maxdat-1;
	    case 2
	        %set max/min for unsigned
	        maxdat = 2^DATA_WIDTH-1;
	        mindat = 0;
	    end

	    if(data_type == 2)
	    	if(abs(coef_matrix) == coef_matrix)
	    		FIR_WIDTH = FIR_WIDTH +1;
	    	end
	    end

	    %Saturating Input Value
	    a=find(int_sti>maxdat);
	    b=find(int_sti<mindat);
	    if (~isempty(a)|~isempty(b))
	 	    fprintf('WARNING : Input Amplitude Exceeds MAXIMUM/MINIMUM allowable values - saturating input values...\n');
	            lena = length (a);
	            lenb = length (b);
	            for i =1:lena
	        	    fprintf('%d > %d \n', int_sti(a(i)), maxdat);
			        int_sti(a(i)) = maxdat;
		        end
		    for i =1:lenb
			    fprintf('%d < %d \n', int_sti(b(i)), mindat);
			    int_sti(b(i)) = mindat;
		    end
	    end
        
	    % Add interpolation
   	    inter_sti = zeros(1, INTER_FACTOR * length(int_sti));
	    inter_sti(1:INTER_FACTOR:INTER_FACTOR * length(int_sti)) = int_sti;

        
        for i = 1 : DY *INTER_FACTOR
    	    coef_current = coef_matrix(i,:);
            output_temp(i) = simp_adaptive (inter_sti, coef_current, i);
        end
	% Truncate output
	len1 = length(output_temp);
	
	    switch  LSB_TYPE
	    case 0
	        %truncate
            out_dec = bi_trunc_lsb(output_temp,LSB_RM,FIR_WIDTH);
	    case 1
	        %round
            out_dec = bi_round(output_temp,LSB_RM, FIR_WIDTH);
	    end
        
 	    switch  MSB_TYPE
	    case 0
	        %truncate
            out_dec = bi_trunc_msb(out_dec,MSB_RM,FIR_WIDTH-LSB_RM);
	    case 1
	        %round
            out_dec = bi_satu(out_dec,MSB_RM, FIR_WIDTH-LSB_RM);
	    end
 	   
    	% choose decimation output in phase=DECI_FACTOR-1  
     	if(DECI_FACTOR == 1)
     		output = out_dec;
     	else
     		output = out_dec(DECI_FACTOR:DECI_FACTOR:len1);
 	    end 
 	      
  	function[output, outindex] = simp_adaptive (int_sti, coef_current, data_index, output)
	%Simulation is the whole input sequence
	%coef_current is the current coefficient set
	%data_index gives the last data to use
	%outputs are the sum of input and coef multiplication
	%outindex is the next data_index
   
	sti_current = zeros(length(coef_current),1);
	
	data_length = length(int_sti);
	
	%Check data index
	if (data_index > data_length)
		fprintf('ERROR: DATA INDEX IS LARGER THAN DATA LENGTH!!!\n');
		return;
	end
	for i = 1: length(coef_current)
	   if ((data_index -i+1)>0 & (data_index - i+1)<=data_length)
	      sti_current(i,1) = int_sti(data_index - i+1);
	   end
	end
	
	outindex= data_index+1;
	output = coef_current * sti_current;
	% end of function simp_adaptive

	function output = bi_round(data_in,LSB_RM,ORI_WIDTH, output)
	% LSB_RM is the bit to lose in LSB
	% ORI_WIDTH is the original data width
	data = round (data_in / 2^LSB_RM);
	output = bi_satu(data,0,ORI_WIDTH - LSB_RM);
	%end of function bi_trunc_lsb
	
	function output = bi_trunc_lsb(data_in,LSB_RM,ORI_WIDTH, output)
	% LSB_RM is the bit to lose in LSB
	% ORI_WIDTH is the original data width
	%2's complement system
	output = bitshift(2^ORI_WIDTH*(data_in<0) + data_in, -LSB_RM) - 2^(ORI_WIDTH-LSB_RM) *(data_in<0);
	% end of function bi_round
	
	function output = bi_trunc_msb(data_in,MSB_RM,ORI_WIDTH, output)
	% MSB_RM is the bit to lose in LSB
	% ORI_WIDTH is the original data width
	%2's complement system
	data = 2^ORI_WIDTH * (data_in < 0)+ data_in;
	erase_num = 2^(ORI_WIDTH - MSB_RM) - 1;
	data = bitand(data, erase_num);
	output = data - 2^(ORI_WIDTH - MSB_RM)*(bitget(data,ORI_WIDTH - MSB_RM));
	%end of bi_trunc_msb
	
	function output = bi_satu(data_in,MSB_RM,ORI_WIDTH, output)
	% MSB_RM is the bit to lose in LSB
	% ORI_WIDTH is the original data width
	%2's complement system
	maxdat = 2^(ORI_WIDTH - MSB_RM -1)-1;
	mindat = 2^(ORI_WIDTH - MSB_RM -1)*(-1);
	data_in(find(data_in > maxdat)) = maxdat;
	data_in(find(data_in < mindat)) = mindat;
	output = data_in;
	%end of bi_satu 
