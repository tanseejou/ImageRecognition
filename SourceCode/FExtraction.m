% filename:FExtraction
% 
%script to for features extraction
%  1. call Pre-Process Steps
%  2. for each pattern arranged all features in a matrix
%  3. for each pattern arranged the target in  a matrix
%
% ListF is filename list (call from selectfile.m)
% A is the output of of all pattern features.
% O ia the target output class - in same order as the pattern
%
% By Md Sah Nov 2019

function [A,O] = FExtraction(FList)
%S = 8100; % the size of features [90x90]  
 S=100;  %size 0f input node / features [10x10] 
 A((length(FList)),S)=0;  % array of features 
 O((length(FList)),10)=0;  % array of target 

 
for i=1:length(FList)
    fn = FList(i).name; %file name
    % pre process the file
    [X,k] = PreProcess(fn);
    F = gridfeatures(k);
    A(i,:)=F;  
    t = getbintarget(fn(2));   % extract target from filename and changed into binary form
    O(i,:)=t';
  %pause;
end
end 