% File: Close_Connection.m @ FastDAQ
% AUthor: Urs Hofmann
% Date: 21.08.2018
% Mail: hofmannu@student.ethz.ch

% Description: Closes the connection to the data acquisition card.

function Close_Connection(Obj)

  % Check if card was opened before (requirement to close card)
  if (Obj.isConnected)
    spcMCloseCard(Obj.cardInfo);
    Obj.cardInfo = [];
    Obj.VPrintF_With_ID('Connection to DAQ closed.\n');
  else
    Obj.VPrintF_With_ID('');
    short_warn('Cannot close connection to card, it was not opened.');
  end

end
