close all
clear all
clc       
%--------------------------------------------------------------------------
%PARAMETERS OF A 2MW DFIG
%IEEE - DFIM: Chapter 3 
%--------------------------------------------------------------------------
f = 60;                     % Stator frequency (Hz)
n = 1800;                   % Synchronous speed at 50 Hz|(rev/min)
Ps = 2e6;                   % Nominal stator three-phase active power|(MW)
Vs = 690;                   % Line-to-line nominal stator voltage in rms (V)
Is = 1760;                  % Each phase nominal stator current in rms (Amp)
Tem = 12732;                % Nominal torque at generator or motor modes (N.m)
%Stator connection Star
p = 2;                      % Pole pair 
Vr = 2070;                  % Line-to-line nominal rotor voltage in rms (reached at speed near zero) (V)
%Rotor connection Star
u = 0.34;                   % Stator/rotor turns ratio (relation between the stator and rotor)
Rs = 2.6e-3;                % Stator resistance (mohm)
Lsi = 87e-6;                % Stator leakage inductance (uH)
Lm = 2.5e-3;                % Magnetizing inductace (mH)
Rres = 26.1e-3;             %% Rotor resistance (mohm)
Rind = 783e-6;              %% Rotor leakage inductance (uH)
Rr = 2.9e-3;                % Rotor resistance referred to stator (mohm)
Lsr = 87e-6;                % Rotor leakage inductance referred to the stator (uH)
Ls = Lm + Lsi;              % Stator inductance (mH)
Lr = Lm + Lsr;              % Rotor inductance (mH)
%--------------------------------------------------------------------------
%Space for Rotor Side Converter
Q = 0;                      % For Reactive power = 0
smax = 0.33;                % Maximun slip 0.25
Fs = 1.5%1.8;               % Stator Flux
Vbus_ref = 1200;            % Bus Voltage
%Mechanic 
J = 90%130                  % Inertia Kg*m^2
D = 0.1%1e-3;               % Damping friction factor N.m.s
%PI regulators
sigma = 1- Lm^2/(Ls*Lr); 
tau_i = (sigma*Lr)/Rr;
tau_n = 0.05;
wni = 100*(1/tau_i);
wnn = 1/tau_n;

kp_id = (2*wni*sigma*Lr)-Rr;
kp_iq = kp_id;

ki_id = (wni^2)*Lr*sigma;
ki_iq = ki_id;

kp_n = (2*wnn*J)/p;
ki_n = ((wnn^2)*J)/p;
%--------------------------------------------------------------------------
%Space for Grid Side Converter
Cbus = 80e-3;               % DC bus capacitance
Rg = 20e-6;                 % Grid side filter? resistance 1
Lg = 483e-6;                % Grid side filter? inductance 1e-3

Kpg = 1/(1.5*Vs*sqrt(2/3)); 
Kqg = -Kpg;

%PI regulators
tau_ig = Lg/Rg;
wnig = 60*2*pi;

kp_idg = (2*wnig*Lg)-Rg;
kp_iqg = kp_idg;
ki_idg = (wnig^2)*Lg;
ki_iqg = ki_idg;

kp_v = -1000;   
ki_v = -300000;

%--------------------------------------------------------------------------
%PWM 
fsw = 4e3;                  % Switching frequency (Hz)
Ts = 1/fsw/f;               % Sample time (sec)

%--------------------------------------------------------------------------
%Space for Three blade wind turbine model
% Beta -> Lambda Vs Cp Graph
max_rpm_t = 21.6            %Based on DFIG 50Hz relation = 1.2 for 60Hz
min_rpm_t = 10.8            %Based on DFIG 50Hz relation = 1.2 for 60Hz
max_rpm_g = 2160            %Based on DFIG 50Hz relation = 1.2 for 60Hz
min_rpm_g = 1080            %Based on DFIG 50Hz relation = 1.2 for 60Hz
N = 100;                    %Gearbox Ratio
Radio = 44;                 %Radio
ro = 1.225;                 %Air desity kg/m3           
%beta=[-2.5 -1.5 0 1.5 2.5 0];
%beta=[0 2 3 4 5 6];
beta=[0 0 0 0 0 0 0];
for k=1:1%k=1:7
    cont = 1;
    for lambda = 0.1:0.1:14
        lambdai(cont)=(1/((1/(lambda-0.02*beta(k))+(0.003/(beta(k)^3+1)))));
        Cp(cont)=0.73*(151/lambdai(cont)-0.58*beta(k)-0.002*beta(k)^2.14-13.2).*(exp(-18.4/lambdai(cont)));
        Ct(cont) = Cp (cont)/lambda;
        cont = cont+1;
    end
    lambda=[0.1:0.1:14];
    %figure (1)
    %plot(lambda,Cp), grid on, hold on,
    
    %Rotor Speed Vs Power Graph
    cont3=1;
    for Vv = 5:0.5:11.5  %Wind Velocity at 12 m/s
        cont2=1;
        for serie = 0.1:0.1:14
            Pt (cont2)= (0.5*ro*pi*(Radio)^2)*(Vv)^3*Cp(cont2);
            omega_m (cont2) = ((lambda(cont2)*Vv) /Radio)*N/(2*pi/60);            
            cont2=cont2+1;            
        end
         % Deload 10% over-speed
         cp_opt_v1= 0.4412
         lambda_opt_v1=7.2
         %
         cp_opt_deload= 0.4041
         lambda_opt_deload=8.4
         %
         Pt_opt (cont3)= (0.5*ro*pi*(Radio)^2)*(Vv)^3*(cp_opt_v1);
         omega_m_opt (cont3) = (((lambda_opt_v1)*Vv) /Radio)*N/(2*pi/60);
         % 
         Pt_deload (cont3)= (0.5*ro*pi*(Radio)^2)*(Vv)^3*(cp_opt_deload);
         omega_m_deload (cont3) = (((lambda_opt_deload)*Vv) /Radio)*N/(2*pi/60);        
         cont3=cont3+1;
         %
         figure (2)
         plot(omega_m,Pt), grid on, hold on,         
             
    end   
    plot(omega_m_opt,Pt_opt)
    plot(omega_m_deload,Pt_deload)
end
% Lambda and CP optimum
cp_opt = max(Cp)
cp_opt_abs = abs(max(Cp));
posicion=find(Cp==cp_opt);
lambda_opt = abs(lambda(posicion))
beta = beta (k)     %Pitch angle
% Wind velocity Vs Wind Power
cont2=1;
lambda=[0.1:0.1:14];
for Vv = 0.1:0.1:14
    Pt (cont2)= (0.5*ro*pi*(Radio)^2)*(Vv)^3*cp_opt;    
    omega_m (cont2) = ((lambda_opt*Vv) /Radio)*N/(2*pi/60);
    % Deload
    Pt_deload (cont2)= (0.5*ro*pi*(Radio)^2)*(Vv)^3*(cp_opt)*0.9;
    omega_m_deload (cont2) = (((lambda_opt)*0.9*Vv) /Radio)*N/(2*pi/60);
    cont2=cont2+1;
end
Vv=[0.1:0.1:14];
%figure (4)
%plot(Vv,Pt), grid on, hold on,
%figure (5)
%plot(omega_m,Pt), grid on, hold on,
%figure (6)
%plot(omega_m_deload,Pt_deload), grid on, hold on,
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
%PARAMETERS OF BESS
%--------------------------------------------------------------------------
Vdc_bat_ref= 1300;       % Bus Voltage Battery
%Space for Grid Side Converter
Cbus_bess = 15e-3;        % DC bus capacitance
%Filter
Cfilter = 80e-3;
Rfilter = 20e-3;
Lfilter = 483e-6;

