% Space Variant Imaging System Mexgen File
%
% Copyright (C) 2003-2006
% Center for Perceptual Systems
% University of Texas at Austin
%
% jsp Wed Sep  6 10:23:48 CDT 2006

minversion(1.0)
handlers('svishandlers.cpp')
entrypoint('svismex')

function svisinit(varargin)
% SVISINIT  Initialize the SVIS toolbox
%
% You must call SVISINIT before calling other functions in the
% SVIS toolbox.
%
% SEE ALSO: SVISRELEASE
end

function svisrelease
% SVISRELEASE   Release the SVIS toolbox
%
% Call SVISRELEASE in order to release resources previously allocated
% by the SVIS toolbox.
%
% SEE ALSO: SVISINIT
end

function [double]=sviscodec(uint8)
% SVISCODEC Create a space variant imaging system codec
%
% C=SVISCODEC(SRC) creates a codec that will encode source image SRC.
%
% SRC must be of type uint8.
%
% The return value is a handle to a codec that should be used in
% subsequent calls to the SVIS toolbox.
%
% SEE ALSO: SVISRESMAP, SVISSETRESMAP, SVISSETSRC, SVISENCODE
end

function svissetresmap(double,uint8)
% SVISSETRESMAP Set a codec's resolution map
%
% SVISSETRESMAP(C,R) sets codec C's resolution map to image R.
%
% The image R must be of type UINT8.
%
% Pixels in R represent image resolution values where 255 is
% the highest resolution and 0 is the lowest resolution.
%
% SEE ALSO: SVISCODEC, SVISRESMAP
end

function svissetsrc(double,uint8)
% SVISSETSRC    Set a codec's source image
%
% SVISSETSRC(C,SRC) sets codec C's source image to SRC.
%
% The image SRC must be of type UINT8.
%
% The image dimensions must match those of the image specified in
% SVISCODEC.
%
% The SVISSETSRC function is not required to encode an image.  For
% example, specifying a single, fixed image may be done with the
% SVISCODEC function alone.
%
% However, if you are encoding an image sequence, for example, you
% will likely call SVISCODEC to allocate a codec and specify only the
% first frame.  You would then call SVISSETSRC to specify subsequent
% source frames in the sequence:
%
%     svisinit
%     c=sviscodec(images(:,:,1));
%     svissetresmap(c,resmap);
%     ...
%     while not(done)
%         svissetsrc(c,images(:,:,frame));
%         d=svisencode(c,row,col);
%         ...
%     end
%     svisrelease
%
% SEE ALSO: SVISCODEC, SVISENCODE
end

function [uint8]=svisencode(double,double,double)
% SVISENCODE    Encode the source image
%
% I=SVISENCODE(C,ROW,COL) encodes the image specified either by
% SVISCODEC or by SVISSETSRC at the fixation point in ROW, COL and
% returns the encoded image in I, using the resolution map specified
% by SVISSETRESMAP.
%
% SEE ALSO: SVISCODEC, SVISSETRESMAP, SVISSETSRC
end
