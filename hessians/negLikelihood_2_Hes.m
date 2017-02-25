% function [Grd,Fun] = negLikelihood_2_Grd(x,w,y,c,baseline,one,Xt,Yt)
% 
% Gradient wrapper file generated by ADiGator
% �2010-2014 Matthew J. Weinstein and Anil V. Rao
% ADiGator may be obtained at https://sourceforge.net/projects/adigator/ 
% Contact: mweinstein@ufl.edu
% Bugs/suggestions may be reported to the sourceforge forums
%                    DISCLAIMER
% ADiGator is a general-purpose software distributed under the GNU General
% Public License version 3.0. While the software is distributed with the
% hope that it will be useful, both the software and generated code are
% provided 'AS IS' with NO WARRANTIES OF ANY KIND and no merchantability
% or fitness for any purpose or application.

function [Fun,Grd,Hes] = negLikelihood_2_Hes(x,w,y,c,baseline,one,Xt,Yt)
gator_x.f = x;
gator_x.dx = ones(4,1);
out = negLikelihood_2_ADiGatorHes(gator_x,w,y,c,baseline,one,Xt,Yt);
xind1 = out.dxdx_location(:,1);
xind2 = out.dxdx_location(:,2);
Hes = zeros(4,4);
Hes((xind2-1)*4 + xind1) = out.dxdx;
Grd = reshape(out.dx,[1 4]);
Fun = out.f;
end