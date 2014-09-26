function [lhs1] = svisencode_mexgen (rhs1, rhs2, rhs3)
% SVISENCODE    Encode the source image
%
% I=SVISENCODE(C,ROW,COL) encodes the image specified either by
% SVISCODEC or by SVISSETSRC at the fixation point in ROW, COL and
% returns the encoded image in I, using the resolution map specified
% by SVISSETRESMAP.
%
% SEE ALSO: SVISCODEC, SVISSETRESMAP, SVISSETSRC

% Mexgen generated this file on Wed Jun  8 12:23:58 2011
% DO NOT EDIT!

[lhs1] = svismex (5, rhs1, rhs2, rhs3);
