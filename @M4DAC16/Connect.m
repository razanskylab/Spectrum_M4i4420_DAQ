% File: Connect.m @ FastObj
% Mail: johannesrebling@gmail.com

% Description: convenience function to have unified syntax
function Connect(Obj)
  Obj.Open_Connection();
  Obj.Reset();

  % channels = Obj.channels();
  %
  % channels(1).inputrange = 10000; % [mV]
  % channels(1).term = 1; % 1: 50 ohm termination, 0: 1MOhm termination
  % channels(1).inputoffset = 0;
  % channels(1).diffinput = 0;
  %
  % channels(2).inputrange = 10000; % [mV]
  % channels(2).term = 1; % 1: 50 ohm termination, 0: 1MOhm termination
  % channels(2).inputoffset = 0;
  % channels(2).diffinput = 0;
  %
  % Obj.channels = channels;
  % Obj.externalTrigger = Obj.externalTrigger;
  % Obj.acquisitionMode = Obj.acquisitionMode;
  % Obj.delay = Obj.delay;
  % Obj.samplingRate = Obj.SAMPLING_RATE;
  Obj.timeout = Obj.TIME_OUT;
end
