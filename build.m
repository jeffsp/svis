function build(mex_args)
% BUILD(MEX_ARGS)       Build svis mex files
%
% MEX_ARGS can be used to pass extra arguments to the mex
% command.  For example:
%
% >> build('-g') % build debug version
% >> build('-glnx86') % build linux 32-bit version
% >> build('-glnxa64') % build linux 64-bit version

% Copyright (C) 2006
% Center for Perceptual Systems
% University of Texas at Austin
%
% jsp Wed Sep  6 09:44:53 CDT 2006

if (nargin<1)
    mex_args='';
end

cmd=['mex ',...
        mex_args,...
        ' svismex.cpp svishandlers.cpp svis.cpp foveate.cpp mask.cpp filter.cpp region.cpp ecc.cpp'];

fprintf('Evaluating "%s"\n',cmd)
eval(cmd)

fprintf('Done\n')
