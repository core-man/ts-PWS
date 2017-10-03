if ispc
    mex -v gw_ts_pws.c ...
        ts_pws1e_lib.c ...
        ./FWTa/wavelet_v7.c ...
        ./FWTa/wavelet_mem_v7.c...
        ./FWTa/wavelet_def_v7.c...
        ./FWTa/cdotx.c ...
        ./Tools/MatlabIO.c ...        
        ./Tools/MatlabIO_getfield.c ...
        ./Tools/myallocs.c ...
        ./Tools/prnmsg.c ...
        -I. -I./FWTa/ -I./Tools/ ...
        -DMATLAB
elseif isunix  
    mex -v gw_ts_pws.c ...
        ts_pws1e_lib.c ...
        ./FWTa/wavelet_v7.c ...
        ./FWTa/wavelet_mem_v7.c...
        ./FWTa/wavelet_def_v7.c...
        ./FWTa/cdotx.c ...
        ./Tools/MatlabIO.c ...        
        ./Tools/MatlabIO_getfield.c ...
        ./Tools/myallocs.c ...
        ./Tools/prnmsg.c ...
        -I. -I./FWTa/ -I./Tools/ ...
        -DMATLAB
        CFLAGS='\$CFLAGS -fopenmp -Wall' LDFLAGS='\$LDFLAGS -fopenmp' ...
        COPTIMFLAGS='-O2 -march=native -DNDEBUG' LDOPTIMFLAGS='-O2 -march=native'
end
