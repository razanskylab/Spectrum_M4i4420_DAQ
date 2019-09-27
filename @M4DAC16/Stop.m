% File: Stop.m @ FastDAQ
% Author: Johannes Reblimg
% Mail: johannesrebling@gmail.com

% Description: Stops the board manually.

function Stop(DAQ)
  DAQ.VPrintF('[M4DAC16] Stopping card!\n');
  errCode = spcm_dwSetParam_i32 (DAQ.cardInfo.hDrv, DAQ.mRegs('SPC_M2CMD'),DAQ.mRegs('M2CMD_CARD_STOP'));
  if (errCode ~= 0)
    [success, DAQ.cardInfo] = spcMCheckSetError (errCode, DAQ.cardInfo);
    spcMErrorMessageStdOut(DAQ.cardInfo, 'spcm_dwSetParam_i32:\n\t', true);
    error(DAQ.cardInfo.errorText);
  end
end
