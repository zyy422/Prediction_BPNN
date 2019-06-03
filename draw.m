%% 300 mintues
close all;
figure;
x=5:5:300;
plot(x,rmse_test);
title('Testing');
xlabel("Time horizon (minute)");
ylabel('RMSE values (kW)');
figure;
plot(x,rmse_training);
title('Training');
xlabel("Time horizon (minute)");
ylabel('RMSE values (kW)')
%% 15 days
% close all;
% figure;
% x=1:60;
% plot(x,rmse_test);
% title('Testing');
% xlabel("Time horizon (minute)");
% ylabel('RMSE values (kW)');
% figure;
% plot(x,rmse_training);
% title('Training');
% xlabel("Time horizon (minute)");
% ylabel('RMSE values (kW)')