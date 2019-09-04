close all
prompt = 'Introduzca el valor (grados) de la rotación en X (phi):';
phiDeg = input (prompt);

prompt = 'Introduzca el valor (grados) de la rotación en Y (theta):';
thetaDeg = input (prompt);

prompt = 'Introduzca el valor (grados) de la rotación en Z (psi):';
psiDeg = input (prompt);

phiRad = deg2rad(phiDeg);
thetaRad = deg2rad(thetaDeg);
psiRad = deg2rad(psiDeg);
for t=0:0.01:phiRad
clf
line([5 -5],[0 0],[0 0],'color' ,[1 0 0],'linewidth', 2);
line([0 0],[5 -5],[0 0],'color' ,[0 1 0],'linewidth', 2);
line([0 0],[0 0],[5 -5],'color' ,[0 0 1],'linewidth', 2);
p1 = [0 0 0];
p2 = [7 0 0];
p3 = [7 3 0];
p4 = [0 3 0];
p5 = [0 0 2];
p6 = [7 0 2];
p7 = [7 3 2];
p8 = [0 3 2];
print(p1,p2,p3,p4,p5,p6,p7,p8)
view(123,30)
phiRad = deg2rad(phiDeg);
Rx = [1 0 0; 0 cos(t) -sin(t);0 sin(t) cos(t)];
Rt = Rx;
p1=Rt*p1';
p2=Rt*p2';
p3=Rt*p3';
p4=Rt*p4';
p5=Rt*p5';
p6=Rt*p6';
p7=Rt*p7';
p8=Rt*p8';
print(p1,p2,p3,p4,p5,p6,p7,p8)
grid on
pause(0.01);
end
for y=0:0.01:thetaRad
clf
line([5 -5],[0 0],[0 0],'color' ,[1 0 0],'linewidth', 2);
line([0 0],[5 -5],[0 0],'color' ,[0 1 0],'linewidth', 2);
line([0 0],[0 0],[5 -5],'color' ,[0 0 1],'linewidth', 2);
p1 = [0 0 0];
p2 = [7 0 0];
p3 = [7 3 0];
p4 = [0 3 0];
p5 = [0 0 2];
p6 = [7 0 2];
p7 = [7 3 2];
p8 = [0 3 2];
print(p1,p2,p3,p4,p5,p6,p7,p8)
view(123,30)
thetaRad= deg2rad(thetaDeg);
Ry = [cos(y) 0 sin(y); 0 1 0; -sin(y) 0 cos(y)];
Rp = Ry;
p1=Rp*p1';
p2=Rp*p2';
p3=Rp*p3';
p4=Rp*p4';
p5=Rp*p5';
p6=Rp*p6';
p7=Rp*p7';
p8=Rp*p8';
print(p1,p2,p3,p4,p5,p6,p7,p8)
grid on
pause(0.01);
end
for z=0:0.01:psiRad 
clf
line([5 -5],[0 0],[0 0],'color' ,[1 0 0],'linewidth', 2);
line([0 0],[5 -5],[0 0],'color' ,[0 1 0],'linewidth', 2);
line([0 0],[0 0],[5 -5],'color' ,[0 0 1],'linewidth', 2);
p1 = [0 0 0];
p2 = [7 0 0];
p3 = [7 3 0];
p4 = [0 3 0];
p5 = [0 0 2];
p6 = [7 0 2];
p7 = [7 3 2];
p8 = [0 3 2];
print(p1,p2,p3,p4,p5,p6,p7,p8)
view(123,30)
psiRad = deg2rad(psiDeg);
Rz = [cos(z) -sin(z) 0; sin(z) cos(z) 0; 0 0 1];
Re = Rz;
p1=Re*p1';
p2=Re*p2';
p3=Re*p3';
p4=Re*p4';
p5=Re*p5';
p6=Re*p6';
p7=Re*p7';
p8=Re*p8';
print(p1,p2,p3,p4,p5,p6,p7,p8)
grid on
pause(0.01);
end

