clc
clear all
format short
%%system parameters
%A = [0.0001, 0.01;-0.1 0.0003];
%A=[0 1;-1 0];
A = [0, 0,-1 ;0 0 2; 1 0  -1.5];
%A = [2, 2;-1 1];
%A = [0.1 0.1;0 0.1];
%A = [1 1;0 1];
%A = [1 1;0 -1];
eig(A)
B = [1;1.2;1.5];
rank(ctrb(A,B))
C=[4 2 1; 4 2 1; 0 0 0];
E =[0.1 0 0;0.2 0 0; 0 0 0.2];
D= [0 0 1]';
D'*D
D'*C
C'*C
L=[4 -1 -1 0 -1 -1 0 0 0 ;-1 3 -1 0 0 0 -1 0 0;-1 -1 4 -1 0 0 0 -1 0;0 0 -1 4 -1 0 0 -1 -1;-1 0 0 -1 3 -1 0 0 0;-1 0 0 0 -1 3 0 0 -1; 0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0];
L1=L(1:6,1:6);
L2=L(1:6,7:9);
lamda=sort(eig(L1))

%%Compute feedback gains of protocols
c= 1.5;
G1=-B*B.';
Q1=eye(3);
[Pp,Kp,Lp] = icare(A,[],Q1,[],[],[],G1);
Pp
K=-B'*Pp
% setlmis([])
% P = lmivar(1,[3 1]);
% lmiterm([-1 1 1 P],1 ,1);
% lmiterm([2 1 1 P],1,A,'s') 
% lmiterm([2 1 1 0],-2*B*B')
% 
% lmis1 = getlmis;
% 
% [tmin,xfeas] = feasp(lmis1);
% 
% P = dec2mat(lmis1,xfeas,P)
%K = -c*B'*inv(P)
%
%

%%compact papameter of followers for simulink
IM=eye(6);
Af=kron(IM,A);
Bf=kron(IM,B);
Ef=kron(IM,E);
Cf=kron(IM,C);
Df=kron(IM,D);

%compact papameter of leaders for simulink
Inm=eye(3);
Al=kron(Inm,A);
Cl=kron(Inm,C);
%
eig(Al)
Ak=kron(IM,A)+kron(L1,B*K);
eig(Ak)
Ek=kron(L1,E);
Ck=kron(IM,C)+kron(L1,D*K);
Dk=kron(IM,D);
%
Lk1=kron(L1,eye(3));
Lk2=kron(L2,eye(3));
Kk=kron(IM,K);
Cd=kron(IM,C)+kron(L1,D*K);

%%initial values of agent dynamics
xint=[10 -12 -4 -13 -10 5 5 12 12 -9 -12 3 -8 -11 -5 -12 -10 -1 4 1.2 -3, 5.2 1.5 4, 3 10 10];
Xint=zeros(18,1);
xf=xint(1:18)';
xl=xint(19:27)';
Xint = kron(L1,eye(3))*xf+kron(L2,eye(3))*xl;

%%Compute the actuated H2 norm of controlled system
sys = ss(Ak,Ek,Ck,zeros(18,18));
n = norm(sys,2)
Lc=lyap(Ak,Ek*Ek');
gamma=sqrt(trace(Ck*Lc*Ck'))