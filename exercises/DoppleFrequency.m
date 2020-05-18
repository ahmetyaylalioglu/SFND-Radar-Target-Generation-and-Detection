%Doppler Velocity Calculation
clc;
clear;
%global variables and given information

c = 3*10^8;               %speed of light
radar_operation_f = 77e9; %frequency in Hz

%doppler frequency shifts
fd1 = 3e3;
fd2 = -4.5e3;
fd3 = 11e3;
fd4 = -3e3;

velocities = [];

% TODO : Define the doppler shifts in Hz using the information from above 
fdlist = [fd1 fd2 fd3 fd4];


% TODO : Calculate the wavelengt
wavelength = c/radar_operation_f;

% TODO : Calculate the velocity of the targets  fd = 2*vr/lambda
for n = 1 : length(fdlist)
    velocities(n) = FindVelocity_d(fdlist(n),wavelength);
end


% TODO: Display results
for n = 1 : length(velocities)
    disp("Target " + n + " "  + velocities(n));
end

%Finding velocities fd = 2*vr/lambda
function d = FindVelocity_d(fd,lambda)
d = (fd*lambda)/2;
end



