%Frequency DFIG
figure (1)
plot(f_dfig_test2_1(:,1),f_dfig_test2_1(:,2),'r',f_dfig_test2_2(:,1),f_dfig_test2_2(:,2),'g',f_dfig_test2_3(:,1),f_dfig_test2_3(:,2),'r',f_dfig_test2_4(:,1),f_dfig_test2_4(:,2),'g');
figure (2)
plot(V_bess_mean_test2_1(:,1),V_bess_mean_test2_1(:,2),'r',V_bess_mean_test2_2(:,1),V_bess_mean_test2_2(:,2),'b',V_bess_mean_test2_3(:,1),V_bess_mean_test2_3(:,2),'r',V_bess_mean_test2_4(:,1),V_bess_mean_test2_4(:,2),'y');
figure (3)
plot(V_grid_mean_test2_1(:,1),V_grid_mean_test2_1(:,2),'r',V_grid_mean_test2_2(:,1),V_grid_mean_test2_2(:,2),'b',V_grid_mean_test2_3(:,1),V_grid_mean_test2_3(:,2),'r',V_grid_mean_test2_4(:,1),V_grid_mean_test2_4(:,2),'y');
%plot(f_dfig_test5(:,1),f_dfig_test5(:,2),'r',f_dfig_test6(:,1),f_dfig_test6(:,2),'b',f_dfig_test7(:,1),f_dfig_test7(:,2),'g',f_dfig_test8(:,1),f_dfig_test8(:,2),'r',f_dfig_test9(:,1),f_dfig_test9(:,2),'b',f_dfig_test10(:,1),f_dfig_test10(:,2),'g',f_dfig_test11(:,1),f_dfig_test11(:,2),'r',f_dfig_test12(:,1),f_dfig_test12(:,2),'b',f_dfig_test13(:,1),f_dfig_test13(:,2),'g');
% figure (5)
% plot(f_dfig_test5(:,1),f_dfig_test5(:,2),'r',f_dfig_test6(:,1),f_dfig_test6(:,2),'b',f_dfig_test7(:,1),f_dfig_test7(:,2),'g');
% figure (6)
% plot(f_dfig_test8(:,1),f_dfig_test8(:,2),'r',f_dfig_test9(:,1),f_dfig_test9(:,2),'b',f_dfig_test10(:,1),f_dfig_test10(:,2),'g');
% figure (7)
% plot(f_dfig_test11(:,1),f_dfig_test11(:,2),'r',f_dfig_test12(:,1),f_dfig_test12(:,2),'b',f_dfig_test13(:,1),f_dfig_test13(:,2),'g');
%figure (8)
%plot(f_dfig_test14(:,1),f_dfig_test14(:,2),'r',f_dfig_test15(:,1),f_dfig_test15(:,2),'b',f_dfig_test16(:,1),f_dfig_test16(:,2),'g');

%Frequency GRID
%figure (2)
%plot(f_grid_test5(:,1),f_grid_test5(:,2),'r',f_grid_test6(:,1),f_grid_test6(:,2),'b',f_grid_test7(:,1),f_grid_test7(:,2),'g',f_grid_test8(:,1),f_grid_test8(:,2),'r',f_grid_test9(:,1),f_grid_test9(:,2),'b',f_grid_test10(:,1),f_grid_test10(:,2),'g',f_grid_test11(:,1),f_grid_test11(:,2),'r',f_grid_test12(:,1),f_grid_test12(:,2),'b',f_grid_test13(:,1),f_grid_test13(:,2),'g');

%% Power ref Tests 
% figure (3)
% plot(P_droop_ref_test6(:,1),P_droop_ref_test6(:,2),'r',Inertial_response_ref_test6(:,1),Inertial_response_ref_test6(:,2),'b',P_system_ref_test6(:,1),P_system_ref_test6(:,2),'r',P_bess_ref_test7(:,1),P_bess_ref_test7(:,2),'g',P_droop_ref_test9(:,1),P_droop_ref_test9(:,2),'r',Inertial_response_ref_test9(:,1),Inertial_response_ref_test9(:,2),'b',P_system_ref_test9(:,1),P_system_ref_test9(:,2),'r',P_bess_ref_test10(:,1),P_bess_ref_test10(:,2),'g',P_droop_ref_test12(:,1),P_droop_ref_test12(:,2),'r',Inertial_response_ref_test12(:,1),Inertial_response_ref_test12(:,2),'b',P_system_ref_test12(:,1),P_system_ref_test12(:,2),'r')
% Power mean Tests 
% figure (4)
% plot(P_dfig_mean_test5(:,1),P_dfig_mean_test5(:,2),'r',P_dfig_mean_test6(:,1),P_dfig_mean_test6(:,2),'b',P_bess_mean_test7(:,1),P_bess_mean_test7(:,2),'g',P_dfig_mean_test8(:,1),P_dfig_mean_test8(:,2),'r',P_dfig_mean_test9(:,1),P_dfig_mean_test9(:,2),'b',P_bess_mean_test10(:,1),P_bess_mean_test10(:,2),'g',P_dfig_mean_test11(:,1),P_dfig_mean_test11(:,2),'r',P_dfig_mean_test12(:,1),P_dfig_mean_test12(:,2),'b');


