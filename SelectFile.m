% filename:SelectFile
% 
%script to read filename in the directory and get the statistic of patterns
%for each class. In this sample, the file class can be identified in its
%file name. Therefore, we will extract the infromation from the file names
%and get the files extracted and find the distribution.
%
% A is the directory name that consist of all the files
% example A = 'F:\Drive\03RESEARCH\Data Research\pattern\fingers\train\*.png'
% N is the number of total pattern to be selected
% d is the output of list of filename selected
%
% By Md Sah Nov 2019

function d = SelectFile(A,N)
M = 10; % number of class [0 to 9 ]
cnt(1:M)=0; % counter for each class

% get all filenames in the data directory
  D = dir(A);
% extract only N file
  d =D(1:N);

% see the statistic of each class pattern  
 for i=1:N
  fn = D(i).name; %file name
  x = fn(2);   % extract target from filename
  
  %find the distribution of file being extracted per class
  if (x == '0')
      cnt(1)=cnt(1)+1;
  elseif (x=='1')
      cnt(2)=cnt(2)+1;
  elseif (x=='2')
      cnt(3)=cnt(3)+1;
  elseif (x=='3')
      cnt(4)=cnt(4)+1;
  elseif (x=='4')
      cnt(5)=cnt(5)+1;
  elseif (x=='5')
      cnt(6)=cnt(6)+1;
  elseif (x=='6')
      cnt(7)=cnt(7)+1;
  elseif (x=='7')
      cnt(8)=cnt(8)+1;
  elseif (x=='8')
      cnt(9)=cnt(9)+1;
  elseif (x=='9')
      cnt(10)=cnt(10)+1;
  end    
 end
 cnt
 %bar([0 1 2 3 4 5 6 7 8 9],cnt);
 %title('statistic number of pattern per class');
 %text(0:9,cnt,num2str(cnt'),'vert','bottom','horiz','center'); 
