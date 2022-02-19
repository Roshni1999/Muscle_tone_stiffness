clear; clc; close all

[NUML,TXTL,RAWL]= xlsread("myoton.xlsx", 'Right_Roshni');
[NUMR,TXTR,RAWR]= xlsread("myoton.xlsx", 'Left_Roshni');

%%

toneL = NUML(:,2);
stiffnessL = NUML(:,3);
D_L = NUML(:,4);
Hardness_L = NUML(:,5);

toneR = NUMR(:,2);
stiffnessR = NUMR(:,3);
D_R = NUMR(:,4);
Hardness_R = NUMR(:,5);
%%

Rpoints = {'R1'; 'R2'; 'R3'; 'R4'; 'R5'; 'R6'; 'R7'; 'R8'};
Lpoints = {'L1'; 'L2'; 'L3'; 'L4'; 'L5'; 'L6'; 'L7'; 'L8'};

figure(1); hold on
scatter(toneL, stiffnessL, '*'); 
title('Left foot')
labelpoints(toneL,stiffnessL ,Lpoints,'N',0.1)
x = toneL; y = stiffnessL;
linearfit = 'a*(x) + b';
startPoints = [1 1];
f1 = fit(x,y,linearfit,'Start', startPoints)
plot(f1,'b-')
xlabel('Tone (Hz)'); ylabel('Stiffness (N/m)')

figure(2); hold on
scatter(toneR, stiffnessR, '*');
title('Right foot')
labelpoints(toneR,stiffnessR ,Rpoints,'N',0.1)
x = toneR; y = stiffnessR;
linearfit = 'a*(x) + b';
startPoints = [1 1];
f2 = fit(x,y,linearfit,'Start', startPoints)
plot(f2,'b-')
xlabel('Tone (Hz)'); ylabel('Stiffness (N/m)')
%%

figure(3); hold on
scatter(Hardness_R, stiffnessR, '*');
title('Right foot')
xlabel('Hardness'); ylabel('Stiffness (N/m)')
labelpoints(Hardness_R,stiffnessR ,Rpoints,'N',0.1)

figure(4); hold on
scatter(Hardness_L, stiffnessL, '*');
title('Left foot')
xlabel('Hardness'); ylabel('Stiffness (N/m)')
labelpoints(Hardness_L,stiffnessL ,Lpoints,'N',0.1)

%%






