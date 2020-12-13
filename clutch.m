%% Building a Clutch Lock-Up Model


%% Opening the Model and Running the Simulation

open_system('Clutch'); % code does not appear in the example HTML
evalc('sim(''Clutch'')'); %simulate and don't display output


%% The 'Unlocked' Subsystem

open_system('Clutch/Unlocked');

%% The 'Locked' Subsystem

open_system('Clutch/Locked');

%% - The 'Friction Mode Logic' Subsystem

open_system('Clutch/Friction Mode Logic');


%% - System Inputs

plot(clutch_output.get('Tin').Values.Time, ...
     clutch_output.get('Tin').Values.Data, 'b', ...
     clutch_output.get('Fn').Values.Time,  ...
     clutch_output.get('Fn').Values.Data,  'r'  );
xlabel('Time (sec)');
ylabel('System Inputs');
legend('Engine Torque (Nm)', 'Clutch Normal Force (N)');
title('Normal Force (Fn) and Engine Torque (Tin)');
axis([0 10 -.2 2.2]);

%% Results

plot(Clutch_output.get('EngineSpeed').Values.Time, ...
     Clutch_output.get('EngineSpeed').Values.Data,  'r', ...
     Clutch_output.get('VehicleSpeed').Values.Time, ...
     Clutch_output.get('VehicleSpeed').Values.Data, 'b', ...
     Clutch_output.get('ShaftSpeed').Values.Time, ...
     Clutch_output.get('ShaftSpeed').Values.Data,   'g'  );
xlabel('Time (sec)');
ylabel('Angular Speed (rad/sec)');
legend('\omega_e - Engine Speed', '\omega_v - Vehicle Speed', '\omega - Shaft Speed');
title('Angular Velocities for Default Inputs');


%% Closing Model  

close_system('Clutch',0);
clear Clutch_output;


%% Conclusions
