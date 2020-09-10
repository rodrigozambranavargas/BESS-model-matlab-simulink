%% Plots of DFIG %%

%plot(wind_plot(:,1),wind_plot(:,2));
%plot(Rotor_speed_plot(:,1),Rotor_speed_plot(:,2));
%plot(torque_MPPT_plot(:,1),torque_MPPT_plot(:,2),'b',torque_MPPT_plot(:,1),torque_MPPT_plot(:,3),'g');
%plot(Current_id_rotor_plot(:,1),Current_id_rotor_plot(:,2),'b',Current_id_rotor_plot(:,1),Current_id_rotor_plot(:,3),'g');
%plot(Current_iq_rotor_plot(:,1),Current_iq_rotor_plot(:,2),'b',Current_iq_rotor_plot(:,1),Current_iq_rotor_plot(:,3),'g');
%plot(Current_rotor_plot(:,1),Current_rotor_plot(:,2),'b',Current_rotor_plot(:,1),Current_rotor_plot(:,3),'g',Current_rotor_plot(:,1),Current_rotor_plot(:,4),'r');

%plot(Vbus_plot(:,1),Vbus_plot(:,2),'b',Vbus_plot(:,1),Vbus_plot(:,3),'g');
%plot(Current_id_grid_plot(:,1),Current_id_grid_plot(:,2),'b',Current_id_grid_plot(:,1),Current_id_grid_plot(:,3),'g');
%plot(Current_iq_grid_plot(:,1),Current_iq_grid_plot(:,2),'b',Current_iq_grid_plot(:,1),Current_iq_grid_plot(:,3),'g');
%plot(Stator_rotor_total_power_plot(:,1),Stator_rotor_total_power_plot(:,2),'b',Stator_rotor_total_power_plot(:,1),Stator_rotor_total_power_plot(:,3),'g');

% %figura 1
% subplot(3,1,1);
% plot(wind_plot(:,1),wind_plot(:,2));
% title('Mundaça de Sinal de Vento')
% subplot(3,1,2); 
% plot(Rotor_speed_plot(:,1),Rotor_speed_plot(:,2));
% title('Velocidade do Rotor')
% subplot(3,1,3); 
% plot(torque_MPPT_plot(:,1),torque_MPPT_plot(:,3),'r',torque_MPPT_plot(:,1),torque_MPPT_plot(:,2),'b');
% title('Torque no Exio do DFIG')

% %fugure 2
% subplot(2,2,1);
% plot(Current_id_rotor_plot(:,1),Current_id_rotor_plot(:,3),'r',Current_id_rotor_plot(:,1),Current_id_rotor_plot(:,2),'b');
% title('Corrente Id')
% subplot(2,2,2); 
% plot(Current_iq_rotor_plot(:,1),Current_iq_rotor_plot(:,3),'r',Current_iq_rotor_plot(:,1),Current_iq_rotor_plot(:,2),'b');
% title('Corrente Iq')
% subplot(2,2,[3,4]); 
% plot(Current_rotor_plot(:,1),Current_rotor_plot(:,2),'b',Current_rotor_plot(:,1),Current_rotor_plot(:,3),'g',Current_rotor_plot(:,1),Current_rotor_plot(:,4),'r');
% title('Corrente do Rotor')

% %fugure 3
% subplot(2,2,1);
% plot(Current_id_grid_plot(:,1),Current_id_grid_plot(:,3),'r',Current_id_grid_plot(:,1),Current_id_grid_plot(:,2),'b');
% title('Corrente Id')
% subplot(2,2,2); 
% plot(Current_iq_grid_plot(:,1),Current_iq_grid_plot(:,3),'r',Current_iq_grid_plot(:,1),Current_iq_grid_plot(:,2),'b');
% title('Corrente Iq')
% subplot(2,2,[3,4]); 
% plot(Vbus_plot(:,1),Vbus_plot(:,3),'r',Vbus_plot(:,1),Vbus_plot(:,2),'b');
% title('Tensão do Barramento CC')

% %fugure 4
% subplot(2,2,1);
% plot(Stator_rotor_total_power_plot(:,1),Stator_rotor_total_power_plot(:,2),'b');
% title('Potência do Estator')
% subplot(2,2,2); 
% plot(Stator_rotor_total_power_plot(:,1),Stator_rotor_total_power_plot(:,3),'b');
% title('Potência do Rotor')
% subplot(2,2,[3,4]); 
% plot(Total_power_plot(:,1),Total_power_plot(:,2),'b');
% title('Potência Total')

%% Plots of BESS %%

% %fugure 1
% subplot(2,2,1);
% plot(F_plot(:,1),F_plot(:,2),'b');
% title('Frequência')
% subplot(2,2,2); 
% plot(DC_charge_plot(:,1),DC_charge_plot(:,2),'r',DC_charge_plot(:,1),DC_charge_plot(:,3),'b');
% title('Tensão do Barramento CC')
% subplot(2,2,[3,4]); 
% plot(SOC_plot(:,1),SOC_plot(:,2),'b');
% title('Estado de Carga SOC')

%fugure 2
% subplot(2,2,1);
% plot(Id_plot(:,1),Id_plot(:,2),'b',Id_plot(:,1),Id_plot(:,3),'r');
% title('Corrente Id')
% subplot(2,2,2); 
% plot(Iq_plot(:,1),Iq_plot(:,3),'r',Iq_plot(:,1),Iq_plot(:,2),'b');
% title('Corrente Iq')
% subplot(2,2,[3,4]); 
% plot(Power_plot(:,1),Power_plot(:,3),'b',Power_plot(:,1),Power_plot(:,2),'r',Power_plot(:,1),Power_plot(:,4),'g');
% title('Potência')

%% Plots of GRID %%

%figure (1)
%subplot(2,2,1);
%plot(T1_P_DFIG_CBESS(:,1),T1_P_DFIG_CBESS(:,2),'r');
%title('Potência DFIG')
%subplot(2,2,2);
%plot(T1_P_CBESS(:,1),T1_P_CBESS(:,2),'r');
%title('Potência BESS')
%subplot(2,2,[3,4]); 
%plot(T1_TP_DFIG_CBESS(:,1),T1_TP_DFIG_CBESS(:,2),'r',T1_TP_DFIG_SBESS(:,1),T1_TP_DFIG_SBESS(:,2),'b');
%title('Potência Sistema DFIG/BESS')

%figure (2)
%plot(T1_F_CBESS(:,1),T1_F_CBESS(:,2),'r',T1_F_SBESS(:,1),T1_F_SBESS(:,2),'b');
%title('Potência Sistema DFIG/BESS')

%%
figure (1)
plot(f_dfig_test1(:,1),f_dfig_test1(:,2),'r',f_dfig_test2(:,1),f_dfig_test2(:,2),'b',f_dfig_test3(:,1),f_dfig_test3(:,2),'g',f_dfig_test4(:,1),f_dfig_test4(:,2),'m');
%plot(f_dfig_test1(:,1),f_dfig_test1(:,2),'r',f_dfig_test2(:,1),f_dfig_test2(:,2),'b',f_dfig_test3(:,1),f_dfig_test3(:,2),'g',f_dfig_test4(:,1),f_dfig_test4(:,2),'m');

%figure (2)
%plot(f_grid_test1(:,1),f_grid_test1(:,2),'r',f_grid_test2(:,1),f_grid_test2(:,2),'b',f_grid_test3(:,1),f_grid_test3(:,2),'g',f_grid_test4(:,1),f_grid_test4(:,2),'m');



