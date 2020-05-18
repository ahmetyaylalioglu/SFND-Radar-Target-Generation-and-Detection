clc;
clear;

%global variables and given information
c = 3*10^8; %speed of light
dRes = 1;   % range resolution in meters
Rmax = 300; %radar maximum range in meters

%measured beat frequencies
f1 = 0;
f2 = 1.1e6; %1.1 MHz
f3 = 13.0e6;
f4 = 24.0e6;

flist = [f1,f2,f3,f4];

% TODO : Find the Bsweep of chirp for 1 m resolution
Bsweep = c/(2*dRes);

% TODO : Calculate the chirp time based on the Radar's Max Range
%Using signal trip time function with times 5 to 6 and using with Rmax as
%Range
tchirp = (5.5) * ((2 * Rmax) / c);



% Display the calculated range
for n = 1 : length(flist)
    disp(FindRange(flist(n),c,tchirp,Bsweep));
end

  
%range function
function f = FindRange(fbeat,c,tchirp,Bsweep)
f = (c*fbeat*tchirp)/(2*Bsweep);
end
