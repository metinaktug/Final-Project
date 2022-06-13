# Final-Project
The contract "GSM_IMSI_OTA_Update.sol" is registered at http://remix.ethereum.org/

IMSI (International Mobile Subscriber Identity) field on the SIM card; An example is a decimal number like “2860390123456789” that is hidden in the MF folder with the address “3F00”, the DFGSM subfolder with the address “7F20” and the EFIMSI file with the address “6F07” (register address ). Example IMSI number consists of 15 digits and three parts. The first three-digit group is the Mobile Country Code (Mobile Dialing Code, MCC) from which the subscriber receives service, the next two-digit group is the code of the GSM operator from which the subscriber receives service (Mobile Network Code, MNC) and the remaining 9 digits are MSISDN, that is, the telephone line used by the subscriber. number (MSISDN = National Destination Code + Subscriber Number) https://www.etsi.org/deliver/etsi_gts/11/1111/05.03.00_60/gsmts_1111v050300p.pdf , p84).

By changing the Operator Code existing in the IMSI in the SIM card with the GSM-OTA server, we change the GSM company from which the customer receives service. Thus, the customer moves his number to the other Operator without changing his MSISDN number.

MSISDN is a special number assigned to the subscriber by the operator for the identification and authentication of the subscriber in GSM or UMTS mobile networks. When the user turns on his phone and registers to the system using the IMSI number on the SIM card that identifies the subscriber, the system assigns the MSISDN number determined in the operator database to this connection  (https://en.wikipedia.org/wiki/MSISDN).

Mobile Network Code (MNC) of GSM Operator companies in TURKEY:

Turkcell MNC: 01
Vodafone MNC: 02
TurkTelekom MNC: 03-04

©METIN AKTUG from TURKEY/ANKARA
