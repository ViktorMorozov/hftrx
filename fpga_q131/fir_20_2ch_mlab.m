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
%Decimation Factor:   20
%MSB Truncated Bits: 1
%LSB Truncated bits:22
%FIR Width (Full Calculation Width Before Output Width Adjust) :   55
%-----------------------------------------------------------------------------------------------------------

	%MegaWizard Scaled Coefficient Values
	function  output = fir_20_2ch_mlab_mat (stimulation, output)
	coef_matrix=[0 0 0 0 0 -5 -7 -9 -11 -13 -14 -14 -14 -12 -9 -5 0 10 21 33 47 63 80 99 118 137 156 174 190 203 213 220 221 216 206 188 163 131 91 43 -13 -76 -146 -221 -300 -383 -467 -551 -632 -709 -779 -841 -891 -927 -947 -949 -932 -892 -830 -744 -634 -500 -342 -162 39 259 494 740 995 1252 1508 1756 1990 2206 2396 2555 2676 2755 2786 2764 2686 2549 2351 2090 1768 1386 947 455 -84 -662 -1272 -1903 -2545 -3186 -3812 -4412 -4971 -5476 -5912 -6266 -6527 -6681 -6719 -6632 -6412 -6056 -5561 -4926 -4154 -3252 -2227 -1090 144 1457 2831 4244 5671 7086 8462 9771 10983 12069 13001 13751 14295 14607 14667 14458 13966 13182 12101 10724 9056 7108 4899 2452 -206 -3040 -6010 -9071 -12175 -15269 -18297 -21198 -23914 -26383 -28542 -30331 -31692 -32568 -32908 -32664 -31794 -30263 -28043 -25114 -21464 -17091 -12001 -6210 255 7359 15058 23297 32015 41140 50596 60298 70159 80083 89975 99737 109270 118474 127255 135518 143176 150145 156349 161720 166198 169735 172289 173834 174351 173834 172289 169735 166198 161720 156349 150145 143176 135518 127255 118474 109270 99737 89975 80083 70159 60298 50596 41140 32015 23297 15058 7359 255 -6210 -12001 -17091 -21464 -25114 -28043 -30263 -31794 -32664 -32908 -32568 -31692 -30331 -28542 -26383 -23914 -21198 -18297 -15269 -12175 -9071 -6010 -3040 -206 2452 4899 7108 9056 10724 12101 13182 13966 14458 14667 14607 14295 13751 13001 12069 10983 9771 8462 7086 5671 4244 2831 1457 144 -1090 -2227 -3252 -4154 -4926 -5561 -6056 -6412 -6632 -6719 -6681 -6527 -6266 -5912 -5476 -4971 -4412 -3812 -3186 -2545 -1903 -1272 -662 -84 455 947 1386 1768 2090 2351 2549 2686 2764 2786 2755 2676 2555 2396 2206 1990 1756 1508 1252 995 740 494 259 39 -162 -342 -500 -634 -744 -830 -892 -932 -949 -947 -927 -891 -841 -779 -709 -632 -551 -467 -383 -300 -221 -146 -76 -13 43 91 131 163 188 206 216 221 220 213 203 190 174 156 137 118 99 80 63 47 33 21 10 0 -5 -9 -12 -14 -14 -14 -13 -11 -9 -7 -5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ];
	INTER_FACTOR  = 1;
	DECI_FACTOR  = 20;
	MSB_RM  = 1;
	MSB_TYPE  = 0;
	LSB_RM  = 22;
	LSB_TYPE  = 0;
	FIR_WIDTH  = 55;
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
