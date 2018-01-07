%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

%%
%% Copyright (c) Ericsson AB. All rights reserved.
%%
%% The information in this document is the property of Ericsson.
%%
%% Except as specifically authorized in writing by Ericsson, the
%% receiver of this document shall keep the information contained
%% herein confidential and shall protect the same in whole or in
%% part from disclosure and dissemination to third parties.
%%
%% Disclosure and disseminations to the receivers employees shall
%% only be made on a strict need to know basis.
%%

-module(diameter_gen_base_gy).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-export_records([diameter_base_gy_CER,
		 diameter_base_gy_CEA, diameter_base_gy_DPR,
		 diameter_base_gy_DPA, diameter_base_gy_DWR,
		 diameter_base_gy_DWA, 'diameter_base_gy_answer-message',
		 diameter_base_gy_CCR, diameter_base_gy_CCA,
		 diameter_base_gy_RAR, diameter_base_gy_RAA,
		 diameter_base_gy_STR, diameter_base_gy_STA,
		 diameter_base_gy_ASR, diameter_base_gy_ASA,
		 diameter_base_gy_ACR, diameter_base_gy_ACA,
		 'diameter_base_gy_Proxy-Info',
		 'diameter_base_gy_Failed-AVP',
		 'diameter_base_gy_Experimental-Result',
		 'diameter_base_gy_Vendor-Specific-Application-Id',
		 'diameter_base_gy_Subscription-Id',
		 'diameter_base_gy_Charging-Rule-Install',
		 'diameter_base_gy_Charging-Rule-Definition',
		 'diameter_base_gy_Flow-Information',
		 'diameter_base_gy_QoS-Information',
		 'diameter_base_gy_Allocation-Retention-Priority',
		 diameter_base_gy_Flows,
		 'diameter_base_gy_Redirect-Information',
		 'diameter_base_gy_Supported-Features',
		 'diameter_base_gy_TDF-Information',
		 'diameter_base_gy_Packet-Filter-Information',
		 'diameter_base_gy_User-Equipment-Info',
		 'diameter_base_gy_Default-EPS-Bearer-QoS',
		 'diameter_base_gy_TFT-Packet-Filter-Information',
		 'diameter_base_gy_Charging-Rule-Report',
		 'diameter_base_gy_Final-Unit-Indication',
		 'diameter_base_gy_Redirect-Server',
		 'diameter_base_gy_Application-Detection-Information',
		 'diameter_base_gy_Event-Report-Indication',
		 'diameter_base_gy_Trace-Data',
		 'diameter_base_gy_Access-Network-Charging-Identifier-Gx',
		 'diameter_base_gy_CoA-Information',
		 'diameter_base_gy_Tunnel-Information',
		 'diameter_base_gy_Usage-Monitoring-Information',
		 'diameter_base_gy_Granted-Service-Unit',
		 'diameter_base_gy_CC-Money',
		 'diameter_base_gy_Used-Service-Unit',
		 'diameter_base_gy_Routing-Rule-Install',
		 'diameter_base_gy_Routing-Rule-Definition',
		 'diameter_base_gy_Routing-Filter',
		 'diameter_base_gy_Routing-Rule-Remove',
		 'diameter_base_gy_Unit-Value',
		 'diameter_base_gy_User-CSG-Information',
		 'diameter_base_gy_Charging-Rule-Remove',
		 'diameter_base_gy_Charging-Information',
		 'diameter_base_gy_Multiple-Services-Credit-Control',
		 'diameter_base_gy_Requested-Service-Unit',
		 'diameter_base_gy_G-S-U-Pool-Reference',
		 diameter_base_gy_Trigger, diameter_base_gy_Envelope,
		 'diameter_base_gy_AF-Correlation-Information',
		 'diameter_base_gy_Service-Specific-Info',
		 'diameter_base_gy_Service-Information',
		 'diameter_base_gy_AoC-Information',
		 'diameter_base_gy_AoC-Cost-Information',
		 'diameter_base_gy_Accumulated-Cost',
		 'diameter_base_gy_Incremental-Cost',
		 'diameter_base_gy_Tariff-Information',
		 'diameter_base_gy_Current-Tariff',
		 'diameter_base_gy_Scale-Factor',
		 'diameter_base_gy_Rate-Element',
		 'diameter_base_gy_Unit-Cost',
		 'diameter_base_gy_Next-Tariff',
		 'diameter_base_gy_AoC-Subscription-Information',
		 'diameter_base_gy_AoC-Service',
		 'diameter_base_gy_PS-Information',
		 'diameter_base_gy_Time-Quota-Mechanism',
		 'diameter_base_gy_PS-Furnish-Charging-Information',
		 'diameter_base_gy_E2E-Sequence']).

-record(diameter_base_gy_CER,
	{'Origin-Host', 'Origin-Realm', 'Host-IP-Address' = [],
	 'Vendor-Id', 'Product-Name', 'Origin-State-Id' = [],
	 'Supported-Vendor-Id' = [], 'Auth-Application-Id' = [],
	 'Inband-Security-Id' = [], 'Acct-Application-Id' = [],
	 'Vendor-Specific-Application-Id' = [],
	 'Firmware-Revision' = [], 'AVP' = []}).

-record(diameter_base_gy_CEA,
	{'Result-Code', 'Origin-Host', 'Origin-Realm',
	 'Host-IP-Address' = [], 'Vendor-Id', 'Product-Name',
	 'Origin-State-Id' = [], 'Error-Message' = [],
	 'Failed-AVP' = [], 'Supported-Vendor-Id' = [],
	 'Auth-Application-Id' = [], 'Inband-Security-Id' = [],
	 'Acct-Application-Id' = [],
	 'Vendor-Specific-Application-Id' = [],
	 'Firmware-Revision' = [], 'AVP' = []}).

-record(diameter_base_gy_DPR,
	{'Origin-Host', 'Origin-Realm', 'Disconnect-Cause'}).

-record(diameter_base_gy_DPA,
	{'Result-Code', 'Origin-Host', 'Origin-Realm',
	 'Error-Message' = [], 'Failed-AVP' = []}).

-record(diameter_base_gy_DWR,
	{'Origin-Host', 'Origin-Realm',
	 'Origin-State-Id' = []}).

-record(diameter_base_gy_DWA,
	{'Result-Code', 'Origin-Host', 'Origin-Realm',
	 'Error-Message' = [], 'Failed-AVP' = [],
	 'Origin-State-Id' = []}).

-record('diameter_base_gy_answer-message',
	{'Session-Id' = [], 'Origin-Host', 'Origin-Realm',
	 'Result-Code', 'Origin-State-Id' = [],
	 'Error-Reporting-Host' = [], 'Proxy-Info' = [],
	 'AVP' = []}).

-record(diameter_base_gy_CCR,
	{'Session-Id', 'Auth-Application-Id', 'Origin-Host',
	 'Origin-Realm', 'Destination-Realm',
	 'Service-Context-Id', 'CC-Request-Type',
	 'CC-Request-Number', 'Destination-Host' = [],
	 'User-Name' = [], 'Origin-State-Id' = [],
	 'Event-Timestamp' = [], 'Subscription-Id' = [],
	 'Termination-Cause' = [], 'Requested-Action' = [],
	 'AoC-Request-Type' = [],
	 'Multiple-Services-Indicator' = [],
	 'Multiple-Services-Credit-Control' = [],
	 'CC-Correlation-Id' = [], 'User-Equipment-Info' = [],
	 'Service-Information' = [], 'AVP' = []}).

-record(diameter_base_gy_CCA,
	{'Session-Id', 'Auth-Application-Id', 'Origin-Host',
	 'Origin-Realm', 'Result-Code' = [],
	 'CC-Request-Type' = [], 'CC-Request-Number' = [],
	 'CC-Session-Failover' = [], 'Supported-Features' = [],
	 'Multiple-Services-Credit-Control' = [],
	 'Redirect-Host' = [], 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'Failed-AVP' = [],
	 'Service-Information' = [], 'AVP' = []}).

-record(diameter_base_gy_RAR,
	{'Session-Id', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'Destination-Host',
	 'Auth-Application-Id', 'Re-Auth-Request-Type',
	 'User-Name' = [], 'Origin-State-Id' = [],
	 'Proxy-Info' = [], 'Route-Record' = [], 'AVP' = []}).

-record(diameter_base_gy_RAA,
	{'Session-Id', 'Result-Code', 'Origin-Host',
	 'Origin-Realm', 'User-Name' = [],
	 'Origin-State-Id' = [], 'Error-Message' = [],
	 'Error-Reporting-Host' = [], 'Failed-AVP' = [],
	 'Redirect-Host' = [], 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'AVP' = []}).

-record(diameter_base_gy_STR,
	{'Session-Id', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'Auth-Application-Id',
	 'Termination-Cause', 'User-Name' = [],
	 'Destination-Host' = [], 'Class' = [],
	 'Origin-State-Id' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record(diameter_base_gy_STA,
	{'Session-Id', 'Result-Code', 'Origin-Host',
	 'Origin-Realm', 'User-Name' = [], 'Class' = [],
	 'Error-Message' = [], 'Error-Reporting-Host' = [],
	 'Failed-AVP' = [], 'Origin-State-Id' = [],
	 'Redirect-Host' = [], 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'AVP' = []}).

-record(diameter_base_gy_ASR,
	{'Session-Id', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'Destination-Host',
	 'Auth-Application-Id', 'User-Name' = [],
	 'Origin-State-Id' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record(diameter_base_gy_ASA,
	{'Session-Id', 'Result-Code', 'Origin-Host',
	 'Origin-Realm', 'User-Name' = [],
	 'Origin-State-Id' = [], 'Error-Message' = [],
	 'Error-Reporting-Host' = [], 'Failed-AVP' = [],
	 'Redirect-Host' = [], 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'AVP' = []}).

-record(diameter_base_gy_ACR,
	{'Session-Id', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'Accounting-Record-Type',
	 'Accounting-Record-Number', 'Acct-Application-Id' = [],
	 'Vendor-Specific-Application-Id' = [], 'User-Name' = [],
	 'Accounting-Sub-Session-Id' = [],
	 'Acct-Session-Id' = [], 'Acct-Multi-Session-Id' = [],
	 'Acct-Interim-Interval' = [],
	 'Accounting-Realtime-Required' = [],
	 'Origin-State-Id' = [], 'Event-Timestamp' = [],
	 'Proxy-Info' = [], 'Route-Record' = [], 'AVP' = []}).

-record(diameter_base_gy_ACA,
	{'Session-Id', 'Result-Code', 'Origin-Host',
	 'Origin-Realm', 'Accounting-Record-Type',
	 'Accounting-Record-Number', 'Acct-Application-Id' = [],
	 'Vendor-Specific-Application-Id' = [], 'User-Name' = [],
	 'Accounting-Sub-Session-Id' = [],
	 'Acct-Session-Id' = [], 'Acct-Multi-Session-Id' = [],
	 'Error-Reporting-Host' = [],
	 'Acct-Interim-Interval' = [],
	 'Accounting-Realtime-Required' = [],
	 'Origin-State-Id' = [], 'Event-Timestamp' = [],
	 'Proxy-Info' = [], 'AVP' = []}).

-record('diameter_base_gy_Proxy-Info',
	{'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('diameter_base_gy_Failed-AVP', {'AVP' = []}).

-record('diameter_base_gy_Experimental-Result',
	{'Vendor-Id', 'Experimental-Result-Code'}).

-record('diameter_base_gy_Vendor-Specific-Application-Id',
	{'Vendor-Id' = [], 'Auth-Application-Id' = [],
	 'Acct-Application-Id' = []}).

-record('diameter_base_gy_Subscription-Id',
	{'Subscription-Id-Type', 'Subscription-Id-Data'}).

-record('diameter_base_gy_Charging-Rule-Install',
	{'Charging-Rule-Definition' = [],
	 'Charging-Rule-Name' = [],
	 'Charging-Rule-Base-Name' = [],
	 'Bearer-Identifier' = [], 'Rule-Activation-Time' = [],
	 'Rule-Deactivation-Time' = [],
	 'Resource-Allocation-Notification' = [],
	 'Charging-Correlation-Indicator' = []}).

-record('diameter_base_gy_Charging-Rule-Definition',
	{'Charging-Rule-Name' = [], 'Service-Identifier' = [],
	 'Rating-Group' = [], 'Flow-Information' = [],
	 'TDF-Application-Identifier' = [], 'Flow-Status' = [],
	 'QoS-Information' = [],
	 'PS-to-CS-Session-Continuity' = [],
	 'Reporting-Level' = [], 'Online' = [], 'Offline' = [],
	 'Metering-Method' = [], 'Precedence' = [],
	 'AF-Charging-Identifier' = [], 'Flows' = [],
	 'Monitoring-Key' = [], 'Redirect-Information' = [],
	 'Mute-Notification' = [], 'AF-Signalling-Protocol' = [],
	 'Sponsor-Identity' = [],
	 'Application-Service-Provider-Identity' = [],
	 'Required-Access-Info' = [], 'AVP' = []}).

-record('diameter_base_gy_Flow-Information',
	{'Flow-Description' = [],
	 'Packet-Filter-Identifier' = [],
	 'Packet-Filter-Usage' = [], 'ToS-Traffic-Class' = [],
	 'Security-Parameter-Index' = [], 'Flow-Label' = [],
	 'Flow-Direction' = [], 'AVP' = []}).

-record('diameter_base_gy_QoS-Information',
	{'QoS-Class-Identifier' = [],
	 'Max-Requested-Bandwidth-UL' = [],
	 'Max-Requested-Bandwidth-DL' = [],
	 'Guaranteed-Bitrate-UL' = [],
	 'Guaranteed-Bitrate-DL' = [], 'Bearer-Identifier' = [],
	 'Allocation-Retention-Priority' = [],
	 'APN-Aggregate-Max-Bitrate-UL' = [],
	 'APN-Aggregate-Max-Bitrate-DL' = [], 'AVP' = []}).

-record('diameter_base_gy_Allocation-Retention-Priority',
	{'Priority-Level' = [], 'Pre-emption-Capability' = [],
	 'Pre-emption-Vulnerability' = []}).

-record(diameter_base_gy_Flows,
	{'Media-Component-Number', 'Flow-Number' = [],
	 'Final-Unit-Action' = []}).

-record('diameter_base_gy_Redirect-Information',
	{'Redirect-Support' = [], 'Redirect-Address-Type' = [],
	 'Redirect-Server-Address' = [], 'AVP' = []}).

-record('diameter_base_gy_Supported-Features',
	{'Vendor-Id' = [], 'Feature-List-ID' = [],
	 'Feature-List' = [], 'AVP' = []}).

-record('diameter_base_gy_TDF-Information',
	{'TDF-Destination-Realm' = [],
	 'TDF-Destination-Host' = [], 'TDF-IP-Address' = []}).

-record('diameter_base_gy_Packet-Filter-Information',
	{'Packet-Filter-Identifier' = [], 'Precedence' = [],
	 'Packet-Filter-Content' = [], 'ToS-Traffic-Class' = [],
	 'Security-Parameter-Index' = [], 'Flow-Label' = [],
	 'Flow-Direction' = [], 'AVP' = []}).

-record('diameter_base_gy_User-Equipment-Info',
	{'User-Equipment-Info-Type',
	 'User-Equipment-Info-Value'}).

-record('diameter_base_gy_Default-EPS-Bearer-QoS',
	{'QoS-Class-Identifier' = [],
	 'Allocation-Retention-Priority' = [], 'AVP' = []}).

-record('diameter_base_gy_TFT-Packet-Filter-Information',
	{'Precedence' = [], 'TFT-Filter' = [],
	 'ToS-Traffic-Class' = [],
	 'Security-Parameter-Index' = [], 'Flow-Label' = [],
	 'Flow-Direction' = [], 'AVP' = []}).

-record('diameter_base_gy_Charging-Rule-Report',
	{'Charging-Rule-Name' = [],
	 'Charging-Rule-Base-Name' = [],
	 'Bearer-Identifier' = [], 'PCC-Rule-Status' = [],
	 'Rule-Failure-Code' = [], 'Final-Unit-Indication' = [],
	 'AVP' = []}).

-record('diameter_base_gy_Final-Unit-Indication',
	{'Final-Unit-Action' = [],
	 'Restriction-Filter-Rule' = [], 'Filter-Id' = [],
	 'Redirect-Server' = []}).

-record('diameter_base_gy_Redirect-Server',
	{'Redirect-Address-Type', 'Redirect-Server-Address'}).

-record('diameter_base_gy_Application-Detection-Information',
	{'TDF-Application-Identifier' = [],
	 'TDF-Application-Instance-Identifier' = [],
	 'Flow-Information' = [], 'AVP' = []}).

-record('diameter_base_gy_Event-Report-Indication',
	{'Event-Trigger' = [], 'User-CSG-Information' = [],
	 'IP-CAN-Type' = [], 'AN-GW-Address' = [],
	 '3GPP-SGSN-Address' = [], '3GPP-SGSN-Ipv6-Address' = [],
	 '3GPP-SGSN-MCC-MNC' = [], 'Framed-IP-Address' = [],
	 'RAT-Type' = [], 'RAI' = [],
	 '3GPP-User-Location-Info' = [], 'Trace-Data' = [],
	 'Trace-Reference' = [], 'Routing-IP-Address' = [],
	 'UE-Local-IP-Address' = [],
	 'HeNB-Local-IP-Address' = [], 'UDP-Source-Port' = [],
	 'AVP' = []}).

-record('diameter_base_gy_Trace-Data',
	{'Trace-Reference', 'Trace-Depth', 'Trace-NE-Type-List',
	 'Trace-Interface-List' = [], 'Trace-Event-List' = [],
	 'OMC-Id' = [], 'Trace-Collection-Entity' = [],
	 'AVP' = []}).

-record('diameter_base_gy_Access-Network-Charging-Identifier-Gx',
	{'Access-Network-Charging-Identifier-Value',
	 'Charging-Rule-Base-Name' = [],
	 'Charging-Rule-Name' = []}).

-record('diameter_base_gy_CoA-Information',
	{'Tunnel-Information', 'CoA-IP-Address', 'AVP' = []}).

-record('diameter_base_gy_Tunnel-Information',
	{'Tunnel-Header-Length' = [],
	 'Tunnel-Header-Filter' = [], 'AVP' = []}).

-record('diameter_base_gy_Usage-Monitoring-Information',
	{'Monitoring-Key' = [], 'Granted-Service-Unit' = [],
	 'Used-Service-Unit' = [], 'Usage-Monitoring-Level' = [],
	 'Usage-Monitoring-Report' = [],
	 'Usage-Monitoring-Support' = [], 'AVP' = []}).

-record('diameter_base_gy_Granted-Service-Unit',
	{'Tariff-Time-Change' = [], 'CC-Time' = [],
	 'CC-Money' = [], 'CC-Total-Octets' = [],
	 'CC-Input-Octets' = [], 'CC-Output-Octets' = [],
	 'CC-Service-Specific-Units' = [], 'AVP' = []}).

-record('diameter_base_gy_CC-Money',
	{'Unit-Value', 'Currency-Code' = []}).

-record('diameter_base_gy_Used-Service-Unit',
	{'Reporting-Reason' = [], 'Tariff-Change-Usage' = [],
	 'CC-Time' = [], 'CC-Total-Octets' = [],
	 'CC-Input-Octets' = [], 'CC-Output-Octets' = [],
	 'CC-Service-Specific-Units' = [],
	 'Event-Charging-TimeStamp' = [], 'AVP' = []}).

-record('diameter_base_gy_Routing-Rule-Install',
	{'Routing-Rule-Definition' = [], 'AVP' = []}).

-record('diameter_base_gy_Routing-Rule-Definition',
	{'Routing-Rule-Identifier', 'Routing-Filter' = [],
	 'Precedence' = [], 'Routing-IP-Address' = [],
	 'AVP' = []}).

-record('diameter_base_gy_Routing-Filter',
	{'Flow-Description', 'Flow-Direction',
	 'ToS-Traffic-Class' = [],
	 'Security-Parameter-Index' = [], 'Flow-Label' = [],
	 'AVP' = []}).

-record('diameter_base_gy_Routing-Rule-Remove',
	{'Routing-Rule-Identifier' = [], 'AVP' = []}).

-record('diameter_base_gy_Unit-Value',
	{'Value-Digits', 'Exponent' = []}).

-record('diameter_base_gy_User-CSG-Information',
	{'CSG-Id', 'CSG-Access-Mode',
	 'CSG-Membership-Indication' = []}).

-record('diameter_base_gy_Charging-Rule-Remove',
	{'Charging-Rule-Name' = [],
	 'Charging-Rule-Base-Name' = [],
	 'Required-Access-Info' = [], 'AVP' = []}).

-record('diameter_base_gy_Charging-Information',
	{'Primary-Event-Charging-Function-Name' = [],
	 'Secondary-Event-Charging-Function-Name' = [],
	 'Primary-Charging-Collection-Function-Name' = [],
	 'Secondary-Charging-Collection-Function-Name' = [],
	 'AVP' = []}).

-record('diameter_base_gy_Multiple-Services-Credit-Control',
	{'Granted-Service-Unit' = [],
	 'Requested-Service-Unit' = [], 'Used-Service-Unit' = [],
	 'Service-Identifier' = [], 'Rating-Group' = [],
	 'G-S-U-Pool-Reference' = [], 'Validity-Time' = [],
	 'Result-Code' = [], 'Final-Unit-Indication' = [],
	 'Time-Quota-Threshold' = [],
	 'Volume-Quota-Threshold' = [],
	 'Unit-Quota-Threshold' = [], 'Quota-Holding-Time' = [],
	 'Quota-Consumption-Time' = [], 'Reporting-Reason' = [],
	 'Trigger' = [], 'PS-Furnish-Charging-Information' = [],
	 'Refund-Information' = [],
	 'AF-Correlation-Information' = [], 'Envelope' = [],
	 'Envelope-Reporting' = [], 'Time-Quota-Mechanism' = [],
	 'Service-Specific-Info' = [], 'QoS-Information' = []}).

-record('diameter_base_gy_Requested-Service-Unit',
	{'CC-Time' = [], 'CC-Total-Octets' = [],
	 'CC-Input-Octets' = [], 'CC-Output-Octets' = [],
	 'CC-Service-Specific-Units' = [], 'AVP' = []}).

-record('diameter_base_gy_G-S-U-Pool-Reference',
	{'G-S-U-Pool-Identifier' = [], 'CC-Unit-Type' = [],
	 'Unit-Value' = []}).

-record(diameter_base_gy_Trigger,
	{'Trigger-Type' = []}).

-record(diameter_base_gy_Envelope,
	{'Envelope-Start-Time' = [], 'Envelope-End-Time' = [],
	 'CC-Total-Octets' = [], 'CC-Input-Octets' = [],
	 'CC-Output-Octets' = [],
	 'CC-Service-Specific-Units' = [], 'AVP' = []}).

-record('diameter_base_gy_AF-Correlation-Information',
	{'AF-Charging-Identifier' = [], 'Flows' = []}).

-record('diameter_base_gy_Service-Specific-Info',
	{'Service-Specific-Data' = [],
	 'Service-Specific-Type' = []}).

-record('diameter_base_gy_Service-Information',
	{'Subscription-Id' = [], 'AoC-Information' = [],
	 'PS-Information' = []}).

-record('diameter_base_gy_AoC-Information',
	{'AoC-Cost-Information' = [], 'Tariff-Information' = [],
	 'AoC-Subscription-Information' = []}).

-record('diameter_base_gy_AoC-Cost-Information',
	{'Accumulated-Cost' = [], 'Incremental-Cost' = [],
	 'Currency-Code' = []}).

-record('diameter_base_gy_Accumulated-Cost',
	{'Value-Digits', 'Exponent' = []}).

-record('diameter_base_gy_Incremental-Cost',
	{'Value-Digits', 'Exponent' = []}).

-record('diameter_base_gy_Tariff-Information',
	{'Current-Tariff', 'Tariff-Time-Change' = [],
	 'Next-Tariff' = []}).

-record('diameter_base_gy_Current-Tariff',
	{'Currency-Code' = [], 'Scale-Factor' = [],
	 'Rate-Element' = []}).

-record('diameter_base_gy_Scale-Factor',
	{'Value-Digits', 'Exponent' = []}).

-record('diameter_base_gy_Rate-Element',
	{'CC-Unit-Type', 'Charge-Reason-Code' = [],
	 'Unit-Value' = [], 'Unit-Cost' = [],
	 'Unit-Quota-Threshold' = []}).

-record('diameter_base_gy_Unit-Cost',
	{'Value-Digits', 'Exponent' = []}).

-record('diameter_base_gy_Next-Tariff',
	{'Currency-Code' = [], 'Scale-Factor' = [],
	 'Rate-Element' = []}).

-record('diameter_base_gy_AoC-Subscription-Information',
	{'AoC-Service' = [], 'AoC-Format' = [],
	 'Preferred-AoC-Currency' = []}).

-record('diameter_base_gy_AoC-Service',
	{'AoC-Service-Obligatory-Type' = [],
	 'AoC-Service-Type' = []}).

-record('diameter_base_gy_PS-Information',
	{'3GPP-Charging-Id' = [],
	 'PDN-Connection-Charging-ID' = [], 'Node-Id' = [],
	 '3GPP-PDP-Type' = [], 'PDP-Address' = [],
	 'PDP-Address-Prefix-Length' = [],
	 'Dynamic-Address-Flag' = [],
	 'Dynamic-Address-Flag-Extension' = [],
	 'QoS-Information' = [], 'SGSN-Address' = [],
	 'GGSN-Address' = [], 'SGW-Address' = [],
	 'CG-Address' = [], 'Serving-Node-Type' = [],
	 'SGW-Change' = [], '3GPP-IMSI-MCC-MNC' = [],
	 'IMSI-Unauthenticated-Flag' = [],
	 '3GPP-GGSN-MCC-MNC' = [], '3GPP-NSAPI' = [],
	 'Called-Station-Id' = [],
	 '3GPP-Session-Stop-Indicator' = [],
	 '3GPP-Selection-Mode' = [],
	 '3GPP-Charging-Characteristics' = [],
	 'Charging-Characteristics-Selection-Mode' = [],
	 '3GPP-SGSN-MCC-MNC' = [], '3GPP-MS-TimeZone' = [],
	 'Charging-Rule-Base-Name' = [],
	 '3GPP-User-Location-Info' = [],
	 'User-Location-Info-Time' = [],
	 'User-CSG-Information' = [], '3GPP-RAT-Type' = [],
	 'PS-Furnish-Charging-Information' = [],
	 'PDP-Context-Type' = [], 'User-Equipment-Info' = [],
	 'Change-Condition' = [],
	 'Low-Priority-Indicator' = []}).

-record('diameter_base_gy_Time-Quota-Mechanism',
	{'Time-Quota-Type', 'Base-Time-Interval'}).

-record('diameter_base_gy_PS-Furnish-Charging-Information',
	{'3GPP-Charging-Id', 'PS-Free-Format-Data',
	 'PS-Append-Free-Format-Data' = []}).

-record('diameter_base_gy_E2E-Sequence', {'AVP' = []}).

-export([name/0, id/0, vendor_id/0, vendor_name/0,
	 decode_avps/2, encode_avps/2, msg_name/2, msg_header/1,
	 rec2msg/1, msg2rec/1, name2rec/1, avp_name/2,
	 avp_arity/2, avp_header/1, avp/3, grouped_avp/3,
	 enumerated_avp/3, empty_value/1, dict/0]).

-include_lib("diameter/include/diameter.hrl").

-include_lib("diameter/include/diameter_gen.hrl").

name() -> diameter_gen_base_gy.

id() -> 4.

vendor_id() -> 10415.

vendor_name() -> 'IETF'.

msg_name(271, true) -> 'ACR';
msg_name(271, false) -> 'ACA';
msg_name(272, true) -> 'CCR';
msg_name(272, false) -> 'CCA';
msg_name(274, true) -> 'ASR';
msg_name(274, false) -> 'ASA';
msg_name(275, true) -> 'STR';
msg_name(275, false) -> 'STA';
msg_name(280, true) -> 'DWR';
msg_name(280, false) -> 'DWA';
msg_name(282, true) -> 'DPR';
msg_name(282, false) -> 'DPA';
msg_name(257, true) -> 'CER';
msg_name(257, false) -> 'CEA';
msg_name(258, true) -> 'RAR';
msg_name(258, false) -> 'RAA';
msg_name(_, _) -> ''.

msg_header('CER') -> {257, 128, 4};
msg_header('CEA') -> {257, 0, 4};
msg_header('DPR') -> {282, 128, 4};
msg_header('DPA') -> {282, 0, 4};
msg_header('DWR') -> {280, 128, 4};
msg_header('DWA') -> {280, 0, 4};
msg_header('answer-message') -> {-1, 96, 4};
msg_header('CCR') -> {272, 192, 4};
msg_header('CCA') -> {272, 64, 4};
msg_header('RAR') -> {258, 192, 4};
msg_header('RAA') -> {258, 64, 4};
msg_header('STR') -> {275, 192, 4};
msg_header('STA') -> {275, 64, 4};
msg_header('ASR') -> {274, 192, 4};
msg_header('ASA') -> {274, 64, 4};
msg_header('ACR') -> {271, 192, 4};
msg_header('ACA') -> {271, 64, 4};
msg_header(_) -> erlang:error(badarg).

rec2msg(diameter_base_gy_CER) -> 'CER';
rec2msg(diameter_base_gy_CEA) -> 'CEA';
rec2msg(diameter_base_gy_DPR) -> 'DPR';
rec2msg(diameter_base_gy_DPA) -> 'DPA';
rec2msg(diameter_base_gy_DWR) -> 'DWR';
rec2msg(diameter_base_gy_DWA) -> 'DWA';
rec2msg('diameter_base_gy_answer-message') ->
    'answer-message';
rec2msg(diameter_base_gy_CCR) -> 'CCR';
rec2msg(diameter_base_gy_CCA) -> 'CCA';
rec2msg(diameter_base_gy_RAR) -> 'RAR';
rec2msg(diameter_base_gy_RAA) -> 'RAA';
rec2msg(diameter_base_gy_STR) -> 'STR';
rec2msg(diameter_base_gy_STA) -> 'STA';
rec2msg(diameter_base_gy_ASR) -> 'ASR';
rec2msg(diameter_base_gy_ASA) -> 'ASA';
rec2msg(diameter_base_gy_ACR) -> 'ACR';
rec2msg(diameter_base_gy_ACA) -> 'ACA';
rec2msg(_) -> erlang:error(badarg).

msg2rec('CER') -> diameter_base_gy_CER;
msg2rec('CEA') -> diameter_base_gy_CEA;
msg2rec('DPR') -> diameter_base_gy_DPR;
msg2rec('DPA') -> diameter_base_gy_DPA;
msg2rec('DWR') -> diameter_base_gy_DWR;
msg2rec('DWA') -> diameter_base_gy_DWA;
msg2rec('answer-message') ->
    'diameter_base_gy_answer-message';
msg2rec('CCR') -> diameter_base_gy_CCR;
msg2rec('CCA') -> diameter_base_gy_CCA;
msg2rec('RAR') -> diameter_base_gy_RAR;
msg2rec('RAA') -> diameter_base_gy_RAA;
msg2rec('STR') -> diameter_base_gy_STR;
msg2rec('STA') -> diameter_base_gy_STA;
msg2rec('ASR') -> diameter_base_gy_ASR;
msg2rec('ASA') -> diameter_base_gy_ASA;
msg2rec('ACR') -> diameter_base_gy_ACR;
msg2rec('ACA') -> diameter_base_gy_ACA;
msg2rec(_) -> erlang:error(badarg).

name2rec('Proxy-Info') -> 'diameter_base_gy_Proxy-Info';
name2rec('Failed-AVP') -> 'diameter_base_gy_Failed-AVP';
name2rec('Experimental-Result') ->
    'diameter_base_gy_Experimental-Result';
name2rec('Vendor-Specific-Application-Id') ->
    'diameter_base_gy_Vendor-Specific-Application-Id';
name2rec('Subscription-Id') ->
    'diameter_base_gy_Subscription-Id';
name2rec('Charging-Rule-Install') ->
    'diameter_base_gy_Charging-Rule-Install';
name2rec('Charging-Rule-Definition') ->
    'diameter_base_gy_Charging-Rule-Definition';
name2rec('Flow-Information') ->
    'diameter_base_gy_Flow-Information';
name2rec('QoS-Information') ->
    'diameter_base_gy_QoS-Information';
name2rec('Allocation-Retention-Priority') ->
    'diameter_base_gy_Allocation-Retention-Priority';
name2rec('Flows') -> diameter_base_gy_Flows;
name2rec('Redirect-Information') ->
    'diameter_base_gy_Redirect-Information';
name2rec('Supported-Features') ->
    'diameter_base_gy_Supported-Features';
name2rec('TDF-Information') ->
    'diameter_base_gy_TDF-Information';
name2rec('Packet-Filter-Information') ->
    'diameter_base_gy_Packet-Filter-Information';
name2rec('User-Equipment-Info') ->
    'diameter_base_gy_User-Equipment-Info';
name2rec('Default-EPS-Bearer-QoS') ->
    'diameter_base_gy_Default-EPS-Bearer-QoS';
name2rec('TFT-Packet-Filter-Information') ->
    'diameter_base_gy_TFT-Packet-Filter-Information';
name2rec('Charging-Rule-Report') ->
    'diameter_base_gy_Charging-Rule-Report';
name2rec('Final-Unit-Indication') ->
    'diameter_base_gy_Final-Unit-Indication';
name2rec('Redirect-Server') ->
    'diameter_base_gy_Redirect-Server';
name2rec('Application-Detection-Information') ->
    'diameter_base_gy_Application-Detection-Information';
name2rec('Event-Report-Indication') ->
    'diameter_base_gy_Event-Report-Indication';
name2rec('Trace-Data') -> 'diameter_base_gy_Trace-Data';
name2rec('Access-Network-Charging-Identifier-Gx') ->
    'diameter_base_gy_Access-Network-Charging-Identifier-Gx';
name2rec('CoA-Information') ->
    'diameter_base_gy_CoA-Information';
name2rec('Tunnel-Information') ->
    'diameter_base_gy_Tunnel-Information';
name2rec('Usage-Monitoring-Information') ->
    'diameter_base_gy_Usage-Monitoring-Information';
name2rec('Granted-Service-Unit') ->
    'diameter_base_gy_Granted-Service-Unit';
name2rec('CC-Money') -> 'diameter_base_gy_CC-Money';
name2rec('Used-Service-Unit') ->
    'diameter_base_gy_Used-Service-Unit';
name2rec('Routing-Rule-Install') ->
    'diameter_base_gy_Routing-Rule-Install';
name2rec('Routing-Rule-Definition') ->
    'diameter_base_gy_Routing-Rule-Definition';
name2rec('Routing-Filter') ->
    'diameter_base_gy_Routing-Filter';
name2rec('Routing-Rule-Remove') ->
    'diameter_base_gy_Routing-Rule-Remove';
name2rec('Unit-Value') -> 'diameter_base_gy_Unit-Value';
name2rec('User-CSG-Information') ->
    'diameter_base_gy_User-CSG-Information';
name2rec('Charging-Rule-Remove') ->
    'diameter_base_gy_Charging-Rule-Remove';
name2rec('Charging-Information') ->
    'diameter_base_gy_Charging-Information';
name2rec('Multiple-Services-Credit-Control') ->
    'diameter_base_gy_Multiple-Services-Credit-Control';
name2rec('Requested-Service-Unit') ->
    'diameter_base_gy_Requested-Service-Unit';
name2rec('G-S-U-Pool-Reference') ->
    'diameter_base_gy_G-S-U-Pool-Reference';
name2rec('Trigger') -> diameter_base_gy_Trigger;
name2rec('Envelope') -> diameter_base_gy_Envelope;
name2rec('AF-Correlation-Information') ->
    'diameter_base_gy_AF-Correlation-Information';
name2rec('Service-Specific-Info') ->
    'diameter_base_gy_Service-Specific-Info';
name2rec('Service-Information') ->
    'diameter_base_gy_Service-Information';
name2rec('AoC-Information') ->
    'diameter_base_gy_AoC-Information';
name2rec('AoC-Cost-Information') ->
    'diameter_base_gy_AoC-Cost-Information';
name2rec('Accumulated-Cost') ->
    'diameter_base_gy_Accumulated-Cost';
name2rec('Incremental-Cost') ->
    'diameter_base_gy_Incremental-Cost';
name2rec('Tariff-Information') ->
    'diameter_base_gy_Tariff-Information';
name2rec('Current-Tariff') ->
    'diameter_base_gy_Current-Tariff';
name2rec('Scale-Factor') ->
    'diameter_base_gy_Scale-Factor';
name2rec('Rate-Element') ->
    'diameter_base_gy_Rate-Element';
name2rec('Unit-Cost') -> 'diameter_base_gy_Unit-Cost';
name2rec('Next-Tariff') ->
    'diameter_base_gy_Next-Tariff';
name2rec('AoC-Subscription-Information') ->
    'diameter_base_gy_AoC-Subscription-Information';
name2rec('AoC-Service') ->
    'diameter_base_gy_AoC-Service';
name2rec('PS-Information') ->
    'diameter_base_gy_PS-Information';
name2rec('Time-Quota-Mechanism') ->
    'diameter_base_gy_Time-Quota-Mechanism';
name2rec('PS-Furnish-Charging-Information') ->
    'diameter_base_gy_PS-Furnish-Charging-Information';
name2rec('E2E-Sequence') ->
    'diameter_base_gy_E2E-Sequence';
name2rec(T) -> msg2rec(T).

avp_name(13, 10415) ->
    {'3GPP-Charging-Characteristics', 'UTF8String'};
avp_name(2, 10415) ->
    {'3GPP-Charging-Id', 'OctetString'};
avp_name(7, 10415) ->
    {'3GPP-GGSN-Address', 'OctetString'};
avp_name(16, 10415) ->
    {'3GPP-GGSN-Ipv6-Address', 'OctetString'};
avp_name(9, 10415) ->
    {'3GPP-GGSN-MCC-MNC', 'UTF8String'};
avp_name(8, 10415) ->
    {'3GPP-IMSI-MCC-MNC', 'UTF8String'};
avp_name(23, 10415) ->
    {'3GPP-MS-TimeZone', 'OctetString'};
avp_name(10, 10415) -> {'3GPP-NSAPI', 'OctetString'};
avp_name(3, 10415) -> {'3GPP-PDP-Type', 'Enumerated'};
avp_name(21, 10415) -> {'3GPP-RAT-Type', 'OctetString'};
avp_name(6, 10415) ->
    {'3GPP-SGSN-Address', 'OctetString'};
avp_name(15, 10415) ->
    {'3GPP-SGSN-Ipv6-Address', 'OctetString'};
avp_name(18, 10415) ->
    {'3GPP-SGSN-MCC-MNC', 'UTF8String'};
avp_name(12, 10415) ->
    {'3GPP-Selection-Mode', 'UTF8String'};
avp_name(11, 10415) ->
    {'3GPP-Session-Stop-Indicator', 'OctetString'};
avp_name(22, 10415) ->
    {'3GPP-User-Location-Info', 'OctetString'};
avp_name(505, 10415) ->
    {'AF-Charging-Identifier', 'OctetString'};
avp_name(1276, 10415) ->
    {'AF-Correlation-Information', 'Grouped'};
avp_name(529, 10415) ->
    {'AF-Signalling-Protocol', 'Enumerated'};
avp_name(1050, 10415) -> {'AN-GW-Address', 'Address'};
avp_name(2811, 10415) -> {'AN-GW-Status', 'Enumerated'};
avp_name(1040, 10415) ->
    {'APN-Aggregate-Max-Bitrate-DL', 'Unsigned32'};
avp_name(1041, 10415) ->
    {'APN-Aggregate-Max-Bitrate-UL', 'Unsigned32'};
avp_name(501, 10415) ->
    {'Access-Network-Charging-Address', 'Address'};
avp_name(1022, 10415) ->
    {'Access-Network-Charging-Identifier-Gx', 'Grouped'};
avp_name(503, 10415) ->
    {'Access-Network-Charging-Identifier-Value',
     'OctetString'};
avp_name(483, undefined) ->
    {'Accounting-Realtime-Required', 'Enumerated'};
avp_name(485, undefined) ->
    {'Accounting-Record-Number', 'Unsigned32'};
avp_name(480, undefined) ->
    {'Accounting-Record-Type', 'Enumerated'};
avp_name(287, undefined) ->
    {'Accounting-Sub-Session-Id', 'Unsigned64'};
avp_name(259, undefined) ->
    {'Acct-Application-Id', 'Unsigned32'};
avp_name(85, undefined) ->
    {'Acct-Interim-Interval', 'Unsigned32'};
avp_name(50, undefined) ->
    {'Acct-Multi-Session-Id', 'UTF8String'};
avp_name(44, undefined) ->
    {'Acct-Session-Id', 'OctetString'};
avp_name(2052, 10415) ->
    {'Accumulated-Cost', 'Grouped'};
avp_name(1034, 10415) ->
    {'Allocation-Retention-Priority', 'Grouped'};
avp_name(2053, 10415) ->
    {'AoC-Cost-Information', 'Grouped'};
avp_name(2310, 10415) -> {'AoC-Format', 'Enumerated'};
avp_name(2054, 10415) -> {'AoC-Information', 'Grouped'};
avp_name(2055, 10415) ->
    {'AoC-Request-Type', 'Enumerated'};
avp_name(2311, 10415) -> {'AoC-Service', 'Grouped'};
avp_name(2312, 10415) ->
    {'AoC-Service-Obligatory-Type', 'Enumerated'};
avp_name(2313, 10415) ->
    {'AoC-Service-Type', 'Enumerated'};
avp_name(2314, 10415) ->
    {'AoC-Subscription-Information', 'Grouped'};
avp_name(1098, 10415) ->
    {'Application-Detection-Information', 'Grouped'};
avp_name(532, 10415) ->
    {'Application-Service-Provider-Identity', 'UTF8String'};
avp_name(258, undefined) ->
    {'Auth-Application-Id', 'Unsigned32'};
avp_name(276, undefined) ->
    {'Auth-Grace-Period', 'Unsigned32'};
avp_name(274, undefined) ->
    {'Auth-Request-Type', 'Enumerated'};
avp_name(277, undefined) ->
    {'Auth-Session-State', 'Enumerated'};
avp_name(291, undefined) ->
    {'Authorization-Lifetime', 'Unsigned32'};
avp_name(1265, 10415) ->
    {'Base-Time-Interval', 'Unsigned32'};
avp_name(1023, 10415) ->
    {'Bearer-Control-Mode', 'Enumerated'};
avp_name(1020, 10415) ->
    {'Bearer-Identifier', 'OctetString'};
avp_name(1021, 10415) ->
    {'Bearer-Operation', 'Enumerated'};
avp_name(1000, 10415) -> {'Bearer-Usage', 'Enumerated'};
avp_name(411, undefined) ->
    {'CC-Correlation-Id', 'OctetString'};
avp_name(412, undefined) ->
    {'CC-Input-Octets', 'Unsigned64'};
avp_name(413, undefined) -> {'CC-Money', 'Grouped'};
avp_name(414, undefined) ->
    {'CC-Output-Octets', 'Unsigned64'};
avp_name(415, undefined) ->
    {'CC-Request-Number', 'Unsigned32'};
avp_name(416, undefined) ->
    {'CC-Request-Type', 'Enumerated'};
avp_name(417, undefined) ->
    {'CC-Service-Specific-Units', 'Unsigned64'};
avp_name(418, undefined) ->
    {'CC-Session-Failover', 'Enumerated'};
avp_name(420, undefined) -> {'CC-Time', 'Unsigned32'};
avp_name(421, undefined) ->
    {'CC-Total-Octets', 'Unsigned64'};
avp_name(454, undefined) ->
    {'CC-Unit-Type', 'Enumerated'};
avp_name(846, 10415) -> {'CG-Address', 'Address'};
avp_name(2317, 10415) ->
    {'CSG-Access-Mode', 'Enumerated'};
avp_name(1437, 10415) -> {'CSG-Id', 'Unsigned32'};
avp_name(1071, 10415) ->
    {'CSG-Information-Reporting', 'Enumerated'};
avp_name(2318, 10415) ->
    {'CSG-Membership-Indication', 'Enumerated'};
avp_name(30, undefined) ->
    {'Called-Station-Id', 'UTF8String'};
avp_name(2037, 10415) ->
    {'Change-Condition', 'Integer32'};
avp_name(2118, 10415) ->
    {'Charge-Reason-Code', 'Enumerated'};
avp_name(2066, 10415) ->
    {'Charging-Characteristics-Selection-Mode',
     'Enumerated'};
avp_name(1073, 10415) ->
    {'Charging-Correlation-Indicator', 'Enumerated'};
avp_name(618, 10415) ->
    {'Charging-Information', 'Grouped'};
avp_name(1004, 10415) ->
    {'Charging-Rule-Base-Name', 'UTF8String'};
avp_name(1003, 10415) ->
    {'Charging-Rule-Definition', 'Grouped'};
avp_name(1001, 10415) ->
    {'Charging-Rule-Install', 'Grouped'};
avp_name(1005, 10415) ->
    {'Charging-Rule-Name', 'OctetString'};
avp_name(1002, 10415) ->
    {'Charging-Rule-Remove', 'Grouped'};
avp_name(1018, 10415) ->
    {'Charging-Rule-Report', 'Grouped'};
avp_name(25, undefined) -> {'Class', 'OctetString'};
avp_name(1035, 10415) -> {'CoA-IP-Address', 'Address'};
avp_name(1039, 10415) -> {'CoA-Information', 'Grouped'};
avp_name(425, undefined) ->
    {'Currency-Code', 'Unsigned32'};
avp_name(2056, 10415) -> {'Current-Tariff', 'Grouped'};
avp_name(1049, 10415) ->
    {'Default-EPS-Bearer-QoS', 'Grouped'};
avp_name(293, undefined) ->
    {'Destination-Host', 'DiameterIdentity'};
avp_name(283, undefined) ->
    {'Destination-Realm', 'DiameterIdentity'};
avp_name(273, undefined) ->
    {'Disconnect-Cause', 'Enumerated'};
avp_name(2051, 10415) ->
    {'Dynamic-Address-Flag', 'Enumerated'};
avp_name(2068, 10415) ->
    {'Dynamic-Address-Flag-Extension', 'Enumerated'};
avp_name(300, undefined) -> {'E2E-Sequence', 'Grouped'};
avp_name(1266, 10415) -> {'Envelope', 'Grouped'};
avp_name(1267, 10415) -> {'Envelope-End-Time', 'Time'};
avp_name(1268, 10415) ->
    {'Envelope-Reporting', 'Enumerated'};
avp_name(1269, 10415) ->
    {'Envelope-Start-Time', 'Time'};
avp_name(281, undefined) ->
    {'Error-Message', 'UTF8String'};
avp_name(294, undefined) ->
    {'Error-Reporting-Host', 'DiameterIdentity'};
avp_name(1258, 10415) ->
    {'Event-Charging-TimeStamp', 'Time'};
avp_name(1033, 10415) ->
    {'Event-Report-Indication', 'Grouped'};
avp_name(55, undefined) -> {'Event-Timestamp', 'Time'};
avp_name(1006, 10415) ->
    {'Event-Trigger', 'Enumerated'};
avp_name(297, undefined) ->
    {'Experimental-Result', 'Grouped'};
avp_name(298, undefined) ->
    {'Experimental-Result-Code', 'Unsigned32'};
avp_name(429, undefined) -> {'Exponent', 'Integer32'};
avp_name(279, undefined) -> {'Failed-AVP', 'Grouped'};
avp_name(630, 10415) -> {'Feature-List', 'Unsigned32'};
avp_name(629, 10415) ->
    {'Feature-List-ID', 'Unsigned32'};
avp_name(11, undefined) -> {'Filter-Id', 'UTF8String'};
avp_name(449, undefined) ->
    {'Final-Unit-Action', 'Enumerated'};
avp_name(430, undefined) ->
    {'Final-Unit-Indication', 'Grouped'};
avp_name(267, undefined) ->
    {'Firmware-Revision', 'Unsigned32'};
avp_name(507, 10415) ->
    {'Flow-Description', 'IPFilterRule'};
avp_name(1080, 10415) ->
    {'Flow-Direction', 'Enumerated'};
avp_name(1058, 10415) ->
    {'Flow-Information', 'Grouped'};
avp_name(1057, 10415) -> {'Flow-Label', 'OctetString'};
avp_name(509, 10415) -> {'Flow-Number', 'Unsigned32'};
avp_name(511, 10415) -> {'Flow-Status', 'Enumerated'};
avp_name(510, 10415) -> {'Flows', 'Grouped'};
avp_name(8, undefined) ->
    {'Framed-IP-Address', 'OctetString'};
avp_name(97, undefined) ->
    {'Framed-Ipv6-Prefix', 'OctetString'};
avp_name(453, undefined) ->
    {'G-S-U-Pool-Identifier', 'Unsigned32'};
avp_name(457, undefined) ->
    {'G-S-U-Pool-Reference', 'Grouped'};
avp_name(847, 10415) -> {'GGSN-Address', 'Address'};
avp_name(431, undefined) ->
    {'Granted-Service-Unit', 'Grouped'};
avp_name(1025, 10415) ->
    {'Guaranteed-Bitrate-DL', 'Unsigned32'};
avp_name(1026, 10415) ->
    {'Guaranteed-Bitrate-UL', 'Unsigned32'};
avp_name(2804, 10415) ->
    {'HeNB-Local-IP-Address', 'Address'};
avp_name(257, undefined) ->
    {'Host-IP-Address', 'Address'};
avp_name(2308, 10415) ->
    {'IMSI-Unauthenticated-Flag', 'Enumerated'};
avp_name(1027, 10415) -> {'IP-CAN-Type', 'Enumerated'};
avp_name(299, undefined) ->
    {'Inband-Security-Id', 'Unsigned32'};
avp_name(2062, 10415) ->
    {'Incremental-Cost', 'Grouped'};
avp_name(2602, 10415) ->
    {'Low-Priority-Indicator', 'Enumerated'};
avp_name(515, 10415) ->
    {'Max-Requested-Bandwidth-DL', 'Unsigned32'};
avp_name(516, 10415) ->
    {'Max-Requested-Bandwidth-UL', 'Unsigned32'};
avp_name(518, 10415) ->
    {'Media-Component-Number', 'Unsigned32'};
avp_name(1007, 10415) ->
    {'Metering-Method', 'Enumerated'};
avp_name(1066, 10415) ->
    {'Monitoring-Key', 'OctetString'};
avp_name(272, undefined) ->
    {'Multi-Round-Time-Out', 'Unsigned32'};
avp_name(456, undefined) ->
    {'Multiple-Services-Credit-Control', 'Grouped'};
avp_name(455, undefined) ->
    {'Multiple-Services-Indicator', 'Enumerated'};
avp_name(2809, 10415) ->
    {'Mute-Notification', 'Enumerated'};
avp_name(1024, 10415) ->
    {'Network-Request-Support', 'Enumerated'};
avp_name(2057, 10415) -> {'Next-Tariff', 'Grouped'};
avp_name(2064, 10415) -> {'Node-Id', 'UTF8String'};
avp_name(1466, 10415) -> {'OMC-Id', 'OctetString'};
avp_name(1008, 10415) -> {'Offline', 'Enumerated'};
avp_name(1009, 10415) -> {'Online', 'Enumerated'};
avp_name(264, undefined) ->
    {'Origin-Host', 'DiameterIdentity'};
avp_name(296, undefined) ->
    {'Origin-Realm', 'DiameterIdentity'};
avp_name(278, undefined) ->
    {'Origin-State-Id', 'Unsigned32'};
avp_name(1019, 10415) ->
    {'PCC-Rule-Status', 'Enumerated'};
avp_name(2050, 10415) ->
    {'PDN-Connection-Charging-ID', 'Unsigned32'};
avp_name(1065, 10415) ->
    {'PDN-Connection-ID', 'OctetString'};
avp_name(1227, 10415) -> {'PDP-Address', 'Address'};
avp_name(2606, 10415) ->
    {'PDP-Address-Prefix-Length', 'Unsigned32'};
avp_name(1247, 10415) ->
    {'PDP-Context-Type', 'Enumerated'};
avp_name(867, 10415) ->
    {'PS-Append-Free-Format-Data', 'Enumerated'};
avp_name(866, 10415) ->
    {'PS-Free-Format-Data', 'OctetString'};
avp_name(865, 10415) ->
    {'PS-Furnish-Charging-Information', 'Grouped'};
avp_name(874, 10415) -> {'PS-Information', 'Grouped'};
avp_name(1099, 10415) ->
    {'PS-to-CS-Session-Continuity', 'Enumerated'};
avp_name(1059, 10415) ->
    {'Packet-Filter-Content', 'IPFilterRule'};
avp_name(1060, 10415) ->
    {'Packet-Filter-Identifier', 'OctetString'};
avp_name(1061, 10415) ->
    {'Packet-Filter-Information', 'Grouped'};
avp_name(1062, 10415) ->
    {'Packet-Filter-Operation', 'Enumerated'};
avp_name(1072, 10415) ->
    {'Packet-Filter-Usage', 'Enumerated'};
avp_name(1047, 10415) ->
    {'Pre-emption-Capability', 'Enumerated'};
avp_name(1048, 10415) ->
    {'Pre-emption-Vulnerability', 'Enumerated'};
avp_name(1010, 10415) -> {'Precedence', 'Unsigned32'};
avp_name(2315, 10415) ->
    {'Preferred-AoC-Currency', 'Unsigned32'};
avp_name(621, 10415) ->
    {'Primary-Charging-Collection-Function-Name',
     'DiameterURI'};
avp_name(619, 10415) ->
    {'Primary-Event-Charging-Function-Name', 'DiameterURI'};
avp_name(1046, 10415) ->
    {'Priority-Level', 'Unsigned32'};
avp_name(269, undefined) ->
    {'Product-Name', 'UTF8String'};
avp_name(280, undefined) ->
    {'Proxy-Host', 'DiameterIdentity'};
avp_name(284, undefined) -> {'Proxy-Info', 'Grouped'};
avp_name(33, undefined) ->
    {'Proxy-State', 'OctetString'};
avp_name(1028, 10415) ->
    {'QoS-Class-Identifier', 'Enumerated'};
avp_name(1016, 10415) -> {'QoS-Information', 'Grouped'};
avp_name(1029, 10415) ->
    {'QoS-Negotiation', 'Enumerated'};
avp_name(1030, 10415) -> {'QoS-Upgrade', 'Enumerated'};
avp_name(881, 10415) ->
    {'Quota-Consumption-Time', 'Unsigned32'};
avp_name(871, 10415) ->
    {'Quota-Holding-Time', 'Unsigned32'};
avp_name(909, 10415) -> {'RAI', 'UTF8String'};
avp_name(1032, 10415) -> {'RAT-Type', 'Enumerated'};
avp_name(2058, 10415) -> {'Rate-Element', 'Grouped'};
avp_name(432, undefined) ->
    {'Rating-Group', 'Unsigned32'};
avp_name(285, undefined) ->
    {'Re-Auth-Request-Type', 'Enumerated'};
avp_name(433, undefined) ->
    {'Redirect-Address-Type', 'Enumerated'};
avp_name(292, undefined) ->
    {'Redirect-Host', 'DiameterURI'};
avp_name(261, undefined) ->
    {'Redirect-Host-Usage', 'Enumerated'};
avp_name(1085, 10415) ->
    {'Redirect-Information', 'Grouped'};
avp_name(262, undefined) ->
    {'Redirect-Max-Cache-Time', 'Unsigned32'};
avp_name(434, undefined) ->
    {'Redirect-Server', 'Grouped'};
avp_name(435, undefined) ->
    {'Redirect-Server-Address', 'UTF8String'};
avp_name(1086, 10415) ->
    {'Redirect-Support', 'Enumerated'};
avp_name(2022, 10415) ->
    {'Refund-Information', 'OctetString'};
avp_name(1011, 10415) ->
    {'Reporting-Level', 'Enumerated'};
avp_name(872, 10415) ->
    {'Reporting-Reason', 'Enumerated'};
avp_name(436, undefined) ->
    {'Requested-Action', 'Enumerated'};
avp_name(437, undefined) ->
    {'Requested-Service-Unit', 'Grouped'};
avp_name(536, 10415) ->
    {'Required-Access-Info', 'Enumerated'};
avp_name(1063, 10415) ->
    {'Resource-Allocation-Notification', 'Enumerated'};
avp_name(438, undefined) ->
    {'Restriction-Filter-Rule', 'IPFilterRule'};
avp_name(268, undefined) ->
    {'Result-Code', 'Unsigned32'};
avp_name(1042, 10415) -> {'Revalidation-Time', 'Time'};
avp_name(282, undefined) ->
    {'Route-Record', 'DiameterIdentity'};
avp_name(1078, 10415) -> {'Routing-Filter', 'Grouped'};
avp_name(1079, 10415) ->
    {'Routing-IP-Address', 'Address'};
avp_name(1076, 10415) ->
    {'Routing-Rule-Definition', 'Grouped'};
avp_name(1077, 10415) ->
    {'Routing-Rule-Identifier', 'OctetString'};
avp_name(1081, 10415) ->
    {'Routing-Rule-Install', 'Grouped'};
avp_name(1075, 10415) ->
    {'Routing-Rule-Remove', 'Grouped'};
avp_name(1043, 10415) ->
    {'Rule-Activation-Time', 'Time'};
avp_name(1044, 10415) ->
    {'Rule-Deactivation-Time', 'Time'};
avp_name(1031, 10415) ->
    {'Rule-Failure-Code', 'Enumerated'};
avp_name(1228, 10415) -> {'SGSN-Address', 'Address'};
avp_name(2067, 10415) -> {'SGW-Address', 'Address'};
avp_name(2065, 10415) -> {'SGW-Change', 'Enumerated'};
avp_name(2059, 10415) -> {'Scale-Factor', 'Grouped'};
avp_name(622, 10415) ->
    {'Secondary-Charging-Collection-Function-Name',
     'DiameterURI'};
avp_name(620, 10415) ->
    {'Secondary-Event-Charging-Function-Name',
     'DiameterURI'};
avp_name(1056, 10415) ->
    {'Security-Parameter-Index', 'OctetString'};
avp_name(461, undefined) ->
    {'Service-Context-Id', 'UTF8String'};
avp_name(439, undefined) ->
    {'Service-Identifier', 'Unsigned32'};
avp_name(873, 10415) ->
    {'Service-Information', 'Grouped'};
avp_name(863, 10415) ->
    {'Service-Specific-Data', 'UTF8String'};
avp_name(1249, 10415) ->
    {'Service-Specific-Info', 'Grouped'};
avp_name(1257, 10415) ->
    {'Service-Specific-Type', 'Unsigned32'};
avp_name(2047, 10415) ->
    {'Serving-Node-Type', 'Enumerated'};
avp_name(270, undefined) ->
    {'Session-Binding', 'Unsigned32'};
avp_name(263, undefined) ->
    {'Session-Id', 'UTF8String'};
avp_name(271, undefined) ->
    {'Session-Server-Failover', 'Enumerated'};
avp_name(27, undefined) ->
    {'Session-Timeout', 'Unsigned32'};
avp_name(531, 10415) ->
    {'Sponsor-Identity', 'UTF8String'};
avp_name(443, undefined) ->
    {'Subscription-Id', 'Grouped'};
avp_name(444, undefined) ->
    {'Subscription-Id-Data', 'UTF8String'};
avp_name(450, undefined) ->
    {'Subscription-Id-Type', 'Enumerated'};
avp_name(628, 10415) ->
    {'Supported-Features', 'Grouped'};
avp_name(265, undefined) ->
    {'Supported-Vendor-Id', 'Unsigned32'};
avp_name(1088, 10415) ->
    {'TDF-Application-Identifier', 'OctetString'};
avp_name(2802, 10415) ->
    {'TDF-Application-Instance-Identifier', 'OctetString'};
avp_name(1089, 10415) ->
    {'TDF-Destination-Host', 'DiameterIdentity'};
avp_name(1090, 10415) ->
    {'TDF-Destination-Realm', 'DiameterIdentity'};
avp_name(1091, 10415) -> {'TDF-IP-Address', 'Address'};
avp_name(1087, 10415) -> {'TDF-Information', 'Grouped'};
avp_name(1012, 10415) -> {'TFT-Filter', 'IPFilterRule'};
avp_name(1013, 10415) ->
    {'TFT-Packet-Filter-Information', 'Grouped'};
avp_name(29, 10415) ->
    {'TWAN-Identifier', 'OctetString'};
avp_name(452, undefined) ->
    {'Tariff-Change-Usage', 'Enumerated'};
avp_name(2060, 10415) ->
    {'Tariff-Information', 'Grouped'};
avp_name(451, undefined) ->
    {'Tariff-Time-Change', 'Time'};
avp_name(295, undefined) ->
    {'Termination-Cause', 'Enumerated'};
avp_name(1270, 10415) ->
    {'Time-Quota-Mechanism', 'Grouped'};
avp_name(868, 10415) ->
    {'Time-Quota-Threshold', 'Unsigned32'};
avp_name(1271, 10415) ->
    {'Time-Quota-Type', 'Enumerated'};
avp_name(1014, 10415) ->
    {'ToS-Traffic-Class', 'OctetString'};
avp_name(1452, 10415) ->
    {'Trace-Collection-Entity', 'Address'};
avp_name(1458, 10415) -> {'Trace-Data', 'Grouped'};
avp_name(1462, 10415) -> {'Trace-Depth', 'Enumerated'};
avp_name(1465, 10415) ->
    {'Trace-Event-List', 'OctetString'};
avp_name(1464, 10415) ->
    {'Trace-Interface-List', 'OctetString'};
avp_name(1463, 10415) ->
    {'Trace-NE-Type-List', 'OctetString'};
avp_name(1459, 10415) ->
    {'Trace-Reference', 'OctetString'};
avp_name(1264, 10415) -> {'Trigger', 'Grouped'};
avp_name(870, 10415) -> {'Trigger-Type', 'Enumerated'};
avp_name(1036, 10415) ->
    {'Tunnel-Header-Filter', 'IPFilterRule'};
avp_name(1037, 10415) ->
    {'Tunnel-Header-Length', 'Unsigned32'};
avp_name(1038, 10415) ->
    {'Tunnel-Information', 'Grouped'};
avp_name(2806, 10415) ->
    {'UDP-Source-Port', 'Unsigned32'};
avp_name(2805, 10415) ->
    {'UE-Local-IP-Address', 'Address'};
avp_name(2061, 10415) -> {'Unit-Cost', 'Grouped'};
avp_name(1226, 10415) ->
    {'Unit-Quota-Threshold', 'Unsigned32'};
avp_name(445, undefined) -> {'Unit-Value', 'Grouped'};
avp_name(1067, 10415) ->
    {'Usage-Monitoring-Information', 'Grouped'};
avp_name(1068, 10415) ->
    {'Usage-Monitoring-Level', 'Enumerated'};
avp_name(1069, 10415) ->
    {'Usage-Monitoring-Report', 'Enumerated'};
avp_name(1070, 10415) ->
    {'Usage-Monitoring-Support', 'Enumerated'};
avp_name(446, undefined) ->
    {'Used-Service-Unit', 'Grouped'};
avp_name(2319, 10415) ->
    {'User-CSG-Information', 'Grouped'};
avp_name(458, undefined) ->
    {'User-Equipment-Info', 'Grouped'};
avp_name(459, undefined) ->
    {'User-Equipment-Info-Type', 'Enumerated'};
avp_name(460, undefined) ->
    {'User-Equipment-Info-Value', 'OctetString'};
avp_name(2812, 10415) ->
    {'User-Location-Info-Time', 'Time'};
avp_name(1, undefined) -> {'User-Name', 'UTF8String'};
avp_name(448, undefined) ->
    {'Validity-Time', 'Unsigned32'};
avp_name(447, undefined) ->
    {'Value-Digits', 'Integer64'};
avp_name(266, undefined) -> {'Vendor-Id', 'Unsigned32'};
avp_name(260, undefined) ->
    {'Vendor-Specific-Application-Id', 'Grouped'};
avp_name(869, 10415) ->
    {'Volume-Quota-Threshold', 'Unsigned32'};
avp_name(_, _) -> 'AVP'.

avp_arity('CER', 'Origin-Host') -> 1;
avp_arity('CER', 'Origin-Realm') -> 1;
avp_arity('CER', 'Host-IP-Address') -> {1, '*'};
avp_arity('CER', 'Vendor-Id') -> 1;
avp_arity('CER', 'Product-Name') -> 1;
avp_arity('CER', 'Origin-State-Id') -> {0, 1};
avp_arity('CER', 'Supported-Vendor-Id') -> {0, '*'};
avp_arity('CER', 'Auth-Application-Id') -> {0, '*'};
avp_arity('CER', 'Inband-Security-Id') -> {0, '*'};
avp_arity('CER', 'Acct-Application-Id') -> {0, '*'};
avp_arity('CER', 'Vendor-Specific-Application-Id') ->
    {0, '*'};
avp_arity('CER', 'Firmware-Revision') -> {0, 1};
avp_arity('CER', 'AVP') -> {0, '*'};
avp_arity('CEA', 'Result-Code') -> 1;
avp_arity('CEA', 'Origin-Host') -> 1;
avp_arity('CEA', 'Origin-Realm') -> 1;
avp_arity('CEA', 'Host-IP-Address') -> {1, '*'};
avp_arity('CEA', 'Vendor-Id') -> 1;
avp_arity('CEA', 'Product-Name') -> 1;
avp_arity('CEA', 'Origin-State-Id') -> {0, 1};
avp_arity('CEA', 'Error-Message') -> {0, 1};
avp_arity('CEA', 'Failed-AVP') -> {0, '*'};
avp_arity('CEA', 'Supported-Vendor-Id') -> {0, '*'};
avp_arity('CEA', 'Auth-Application-Id') -> {0, '*'};
avp_arity('CEA', 'Inband-Security-Id') -> {0, '*'};
avp_arity('CEA', 'Acct-Application-Id') -> {0, '*'};
avp_arity('CEA', 'Vendor-Specific-Application-Id') ->
    {0, '*'};
avp_arity('CEA', 'Firmware-Revision') -> {0, 1};
avp_arity('CEA', 'AVP') -> {0, '*'};
avp_arity('DPR', 'Origin-Host') -> 1;
avp_arity('DPR', 'Origin-Realm') -> 1;
avp_arity('DPR', 'Disconnect-Cause') -> 1;
avp_arity('DPA', 'Result-Code') -> 1;
avp_arity('DPA', 'Origin-Host') -> 1;
avp_arity('DPA', 'Origin-Realm') -> 1;
avp_arity('DPA', 'Error-Message') -> {0, 1};
avp_arity('DPA', 'Failed-AVP') -> {0, '*'};
avp_arity('DWR', 'Origin-Host') -> 1;
avp_arity('DWR', 'Origin-Realm') -> 1;
avp_arity('DWR', 'Origin-State-Id') -> {0, 1};
avp_arity('DWA', 'Result-Code') -> 1;
avp_arity('DWA', 'Origin-Host') -> 1;
avp_arity('DWA', 'Origin-Realm') -> 1;
avp_arity('DWA', 'Error-Message') -> {0, 1};
avp_arity('DWA', 'Failed-AVP') -> {0, '*'};
avp_arity('DWA', 'Origin-State-Id') -> {0, 1};
avp_arity('answer-message', 'Session-Id') -> {0, 1};
avp_arity('answer-message', 'Origin-Host') -> 1;
avp_arity('answer-message', 'Origin-Realm') -> 1;
avp_arity('answer-message', 'Result-Code') -> 1;
avp_arity('answer-message', 'Origin-State-Id') ->
    {0, 1};
avp_arity('answer-message', 'Error-Reporting-Host') ->
    {0, 1};
avp_arity('answer-message', 'Proxy-Info') -> {0, 1};
avp_arity('answer-message', 'AVP') -> {0, '*'};
avp_arity('CCR', 'Session-Id') -> 1;
avp_arity('CCR', 'Auth-Application-Id') -> 1;
avp_arity('CCR', 'Origin-Host') -> 1;
avp_arity('CCR', 'Origin-Realm') -> 1;
avp_arity('CCR', 'Destination-Realm') -> 1;
avp_arity('CCR', 'Service-Context-Id') -> 1;
avp_arity('CCR', 'CC-Request-Type') -> 1;
avp_arity('CCR', 'CC-Request-Number') -> 1;
avp_arity('CCR', 'Destination-Host') -> {0, 1};
avp_arity('CCR', 'User-Name') -> {0, 1};
avp_arity('CCR', 'Origin-State-Id') -> {0, 1};
avp_arity('CCR', 'Event-Timestamp') -> {0, 1};
avp_arity('CCR', 'Subscription-Id') -> {0, '*'};
avp_arity('CCR', 'Termination-Cause') -> {0, 1};
avp_arity('CCR', 'Requested-Action') -> {0, 1};
avp_arity('CCR', 'AoC-Request-Type') -> {0, 1};
avp_arity('CCR', 'Multiple-Services-Indicator') ->
    {0, 1};
avp_arity('CCR', 'Multiple-Services-Credit-Control') ->
    {0, '*'};
avp_arity('CCR', 'CC-Correlation-Id') -> {0, 1};
avp_arity('CCR', 'User-Equipment-Info') -> {0, 1};
avp_arity('CCR', 'Service-Information') -> {0, 1};
avp_arity('CCR', 'AVP') -> {0, '*'};
avp_arity('CCA', 'Session-Id') -> 1;
avp_arity('CCA', 'Auth-Application-Id') -> 1;
avp_arity('CCA', 'Origin-Host') -> 1;
avp_arity('CCA', 'Origin-Realm') -> 1;
avp_arity('CCA', 'Result-Code') -> {0, 1};
avp_arity('CCA', 'CC-Request-Type') -> {0, 1};
avp_arity('CCA', 'CC-Request-Number') -> {0, 1};
avp_arity('CCA', 'CC-Session-Failover') -> {0, 1};
avp_arity('CCA', 'Supported-Features') -> {0, 1};
avp_arity('CCA', 'Multiple-Services-Credit-Control') ->
    {0, '*'};
avp_arity('CCA', 'Redirect-Host') -> {0, '*'};
avp_arity('CCA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('CCA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('CCA', 'Proxy-Info') -> {0, '*'};
avp_arity('CCA', 'Route-Record') -> {0, '*'};
avp_arity('CCA', 'Failed-AVP') -> {0, '*'};
avp_arity('CCA', 'Service-Information') -> {0, 1};
avp_arity('CCA', 'AVP') -> {0, '*'};
avp_arity('RAR', 'Session-Id') -> 1;
avp_arity('RAR', 'Origin-Host') -> 1;
avp_arity('RAR', 'Origin-Realm') -> 1;
avp_arity('RAR', 'Destination-Realm') -> 1;
avp_arity('RAR', 'Destination-Host') -> 1;
avp_arity('RAR', 'Auth-Application-Id') -> 1;
avp_arity('RAR', 'Re-Auth-Request-Type') -> 1;
avp_arity('RAR', 'User-Name') -> {0, 1};
avp_arity('RAR', 'Origin-State-Id') -> {0, 1};
avp_arity('RAR', 'Proxy-Info') -> {0, '*'};
avp_arity('RAR', 'Route-Record') -> {0, '*'};
avp_arity('RAR', 'AVP') -> {0, '*'};
avp_arity('RAA', 'Session-Id') -> 1;
avp_arity('RAA', 'Result-Code') -> 1;
avp_arity('RAA', 'Origin-Host') -> 1;
avp_arity('RAA', 'Origin-Realm') -> 1;
avp_arity('RAA', 'User-Name') -> {0, 1};
avp_arity('RAA', 'Origin-State-Id') -> {0, 1};
avp_arity('RAA', 'Error-Message') -> {0, 1};
avp_arity('RAA', 'Error-Reporting-Host') -> {0, 1};
avp_arity('RAA', 'Failed-AVP') -> {0, '*'};
avp_arity('RAA', 'Redirect-Host') -> {0, '*'};
avp_arity('RAA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('RAA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('RAA', 'Proxy-Info') -> {0, '*'};
avp_arity('RAA', 'AVP') -> {0, '*'};
avp_arity('STR', 'Session-Id') -> 1;
avp_arity('STR', 'Origin-Host') -> 1;
avp_arity('STR', 'Origin-Realm') -> 1;
avp_arity('STR', 'Destination-Realm') -> 1;
avp_arity('STR', 'Auth-Application-Id') -> 1;
avp_arity('STR', 'Termination-Cause') -> 1;
avp_arity('STR', 'User-Name') -> {0, 1};
avp_arity('STR', 'Destination-Host') -> {0, 1};
avp_arity('STR', 'Class') -> {0, '*'};
avp_arity('STR', 'Origin-State-Id') -> {0, 1};
avp_arity('STR', 'Proxy-Info') -> {0, '*'};
avp_arity('STR', 'Route-Record') -> {0, '*'};
avp_arity('STR', 'AVP') -> {0, '*'};
avp_arity('STA', 'Session-Id') -> 1;
avp_arity('STA', 'Result-Code') -> 1;
avp_arity('STA', 'Origin-Host') -> 1;
avp_arity('STA', 'Origin-Realm') -> 1;
avp_arity('STA', 'User-Name') -> {0, 1};
avp_arity('STA', 'Class') -> {0, '*'};
avp_arity('STA', 'Error-Message') -> {0, 1};
avp_arity('STA', 'Error-Reporting-Host') -> {0, 1};
avp_arity('STA', 'Failed-AVP') -> {0, '*'};
avp_arity('STA', 'Origin-State-Id') -> {0, 1};
avp_arity('STA', 'Redirect-Host') -> {0, '*'};
avp_arity('STA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('STA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('STA', 'Proxy-Info') -> {0, '*'};
avp_arity('STA', 'AVP') -> {0, '*'};
avp_arity('ASR', 'Session-Id') -> 1;
avp_arity('ASR', 'Origin-Host') -> 1;
avp_arity('ASR', 'Origin-Realm') -> 1;
avp_arity('ASR', 'Destination-Realm') -> 1;
avp_arity('ASR', 'Destination-Host') -> 1;
avp_arity('ASR', 'Auth-Application-Id') -> 1;
avp_arity('ASR', 'User-Name') -> {0, 1};
avp_arity('ASR', 'Origin-State-Id') -> {0, 1};
avp_arity('ASR', 'Proxy-Info') -> {0, '*'};
avp_arity('ASR', 'Route-Record') -> {0, '*'};
avp_arity('ASR', 'AVP') -> {0, '*'};
avp_arity('ASA', 'Session-Id') -> 1;
avp_arity('ASA', 'Result-Code') -> 1;
avp_arity('ASA', 'Origin-Host') -> 1;
avp_arity('ASA', 'Origin-Realm') -> 1;
avp_arity('ASA', 'User-Name') -> {0, 1};
avp_arity('ASA', 'Origin-State-Id') -> {0, 1};
avp_arity('ASA', 'Error-Message') -> {0, 1};
avp_arity('ASA', 'Error-Reporting-Host') -> {0, 1};
avp_arity('ASA', 'Failed-AVP') -> {0, '*'};
avp_arity('ASA', 'Redirect-Host') -> {0, '*'};
avp_arity('ASA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('ASA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('ASA', 'Proxy-Info') -> {0, '*'};
avp_arity('ASA', 'AVP') -> {0, '*'};
avp_arity('ACR', 'Session-Id') -> 1;
avp_arity('ACR', 'Origin-Host') -> 1;
avp_arity('ACR', 'Origin-Realm') -> 1;
avp_arity('ACR', 'Destination-Realm') -> 1;
avp_arity('ACR', 'Accounting-Record-Type') -> 1;
avp_arity('ACR', 'Accounting-Record-Number') -> 1;
avp_arity('ACR', 'Acct-Application-Id') -> {0, 1};
avp_arity('ACR', 'Vendor-Specific-Application-Id') ->
    {0, 1};
avp_arity('ACR', 'User-Name') -> {0, 1};
avp_arity('ACR', 'Accounting-Sub-Session-Id') -> {0, 1};
avp_arity('ACR', 'Acct-Session-Id') -> {0, 1};
avp_arity('ACR', 'Acct-Multi-Session-Id') -> {0, 1};
avp_arity('ACR', 'Acct-Interim-Interval') -> {0, 1};
avp_arity('ACR', 'Accounting-Realtime-Required') ->
    {0, 1};
avp_arity('ACR', 'Origin-State-Id') -> {0, 1};
avp_arity('ACR', 'Event-Timestamp') -> {0, 1};
avp_arity('ACR', 'Proxy-Info') -> {0, '*'};
avp_arity('ACR', 'Route-Record') -> {0, '*'};
avp_arity('ACR', 'AVP') -> {0, '*'};
avp_arity('ACA', 'Session-Id') -> 1;
avp_arity('ACA', 'Result-Code') -> 1;
avp_arity('ACA', 'Origin-Host') -> 1;
avp_arity('ACA', 'Origin-Realm') -> 1;
avp_arity('ACA', 'Accounting-Record-Type') -> 1;
avp_arity('ACA', 'Accounting-Record-Number') -> 1;
avp_arity('ACA', 'Acct-Application-Id') -> {0, 1};
avp_arity('ACA', 'Vendor-Specific-Application-Id') ->
    {0, 1};
avp_arity('ACA', 'User-Name') -> {0, 1};
avp_arity('ACA', 'Accounting-Sub-Session-Id') -> {0, 1};
avp_arity('ACA', 'Acct-Session-Id') -> {0, 1};
avp_arity('ACA', 'Acct-Multi-Session-Id') -> {0, 1};
avp_arity('ACA', 'Error-Reporting-Host') -> {0, 1};
avp_arity('ACA', 'Acct-Interim-Interval') -> {0, 1};
avp_arity('ACA', 'Accounting-Realtime-Required') ->
    {0, 1};
avp_arity('ACA', 'Origin-State-Id') -> {0, 1};
avp_arity('ACA', 'Event-Timestamp') -> {0, 1};
avp_arity('ACA', 'Proxy-Info') -> {0, '*'};
avp_arity('ACA', 'AVP') -> {0, '*'};
avp_arity('Proxy-Info', 'Proxy-Host') -> 1;
avp_arity('Proxy-Info', 'Proxy-State') -> 1;
avp_arity('Proxy-Info', 'AVP') -> {0, '*'};
avp_arity('Failed-AVP', 'AVP') -> {1, '*'};
avp_arity('Experimental-Result', 'Vendor-Id') -> 1;
avp_arity('Experimental-Result',
	  'Experimental-Result-Code') ->
    1;
avp_arity('Vendor-Specific-Application-Id',
	  'Vendor-Id') ->
    {1, '*'};
avp_arity('Vendor-Specific-Application-Id',
	  'Auth-Application-Id') ->
    {0, 1};
avp_arity('Vendor-Specific-Application-Id',
	  'Acct-Application-Id') ->
    {0, 1};
avp_arity('Subscription-Id', 'Subscription-Id-Type') ->
    1;
avp_arity('Subscription-Id', 'Subscription-Id-Data') ->
    1;
avp_arity('Charging-Rule-Install',
	  'Charging-Rule-Definition') ->
    {0, '*'};
avp_arity('Charging-Rule-Install',
	  'Charging-Rule-Name') ->
    {0, '*'};
avp_arity('Charging-Rule-Install',
	  'Charging-Rule-Base-Name') ->
    {0, '*'};
avp_arity('Charging-Rule-Install',
	  'Bearer-Identifier') ->
    {0, 1};
avp_arity('Charging-Rule-Install',
	  'Rule-Activation-Time') ->
    {0, 1};
avp_arity('Charging-Rule-Install',
	  'Rule-Deactivation-Time') ->
    {0, 1};
avp_arity('Charging-Rule-Install',
	  'Resource-Allocation-Notification') ->
    {0, 1};
avp_arity('Charging-Rule-Install',
	  'Charging-Correlation-Indicator') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'Charging-Rule-Name') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'Service-Identifier') ->
    {0, 1};
avp_arity('Charging-Rule-Definition', 'Rating-Group') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'Flow-Information') ->
    {0, '*'};
avp_arity('Charging-Rule-Definition',
	  'TDF-Application-Identifier') ->
    {0, 1};
avp_arity('Charging-Rule-Definition', 'Flow-Status') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'QoS-Information') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'PS-to-CS-Session-Continuity') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'Reporting-Level') ->
    {0, 1};
avp_arity('Charging-Rule-Definition', 'Online') ->
    {0, 1};
avp_arity('Charging-Rule-Definition', 'Offline') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'Metering-Method') ->
    {0, 1};
avp_arity('Charging-Rule-Definition', 'Precedence') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'AF-Charging-Identifier') ->
    {0, 1};
avp_arity('Charging-Rule-Definition', 'Flows') ->
    {0, '*'};
avp_arity('Charging-Rule-Definition',
	  'Monitoring-Key') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'Redirect-Information') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'Mute-Notification') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'AF-Signalling-Protocol') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'Sponsor-Identity') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'Application-Service-Provider-Identity') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
	  'Required-Access-Info') ->
    {0, 1};
avp_arity('Charging-Rule-Definition', 'AVP') ->
    {0, '*'};
avp_arity('Flow-Information', 'Flow-Description') ->
    {0, 1};
avp_arity('Flow-Information',
	  'Packet-Filter-Identifier') ->
    {0, 1};
avp_arity('Flow-Information', 'Packet-Filter-Usage') ->
    {0, 1};
avp_arity('Flow-Information', 'ToS-Traffic-Class') ->
    {0, 1};
avp_arity('Flow-Information',
	  'Security-Parameter-Index') ->
    {0, 1};
avp_arity('Flow-Information', 'Flow-Label') -> {0, 1};
avp_arity('Flow-Information', 'Flow-Direction') ->
    {0, 1};
avp_arity('Flow-Information', 'AVP') -> {0, '*'};
avp_arity('QoS-Information', 'QoS-Class-Identifier') ->
    {0, 1};
avp_arity('QoS-Information',
	  'Max-Requested-Bandwidth-UL') ->
    {0, 1};
avp_arity('QoS-Information',
	  'Max-Requested-Bandwidth-DL') ->
    {0, 1};
avp_arity('QoS-Information', 'Guaranteed-Bitrate-UL') ->
    {0, 1};
avp_arity('QoS-Information', 'Guaranteed-Bitrate-DL') ->
    {0, 1};
avp_arity('QoS-Information', 'Bearer-Identifier') ->
    {0, 1};
avp_arity('QoS-Information',
	  'Allocation-Retention-Priority') ->
    {0, 1};
avp_arity('QoS-Information',
	  'APN-Aggregate-Max-Bitrate-UL') ->
    {0, 1};
avp_arity('QoS-Information',
	  'APN-Aggregate-Max-Bitrate-DL') ->
    {0, 1};
avp_arity('QoS-Information', 'AVP') -> {0, '*'};
avp_arity('Allocation-Retention-Priority',
	  'Priority-Level') ->
    {0, 1};
avp_arity('Allocation-Retention-Priority',
	  'Pre-emption-Capability') ->
    {0, 1};
avp_arity('Allocation-Retention-Priority',
	  'Pre-emption-Vulnerability') ->
    {0, 1};
avp_arity('Flows', 'Media-Component-Number') -> 1;
avp_arity('Flows', 'Flow-Number') -> {0, '*'};
avp_arity('Flows', 'Final-Unit-Action') -> {0, 1};
avp_arity('Redirect-Information', 'Redirect-Support') ->
    {0, 1};
avp_arity('Redirect-Information',
	  'Redirect-Address-Type') ->
    {0, 1};
avp_arity('Redirect-Information',
	  'Redirect-Server-Address') ->
    {0, 1};
avp_arity('Redirect-Information', 'AVP') -> {0, '*'};
avp_arity('Supported-Features', 'Vendor-Id') -> {0, 1};
avp_arity('Supported-Features', 'Feature-List-ID') ->
    {0, 1};
avp_arity('Supported-Features', 'Feature-List') ->
    {0, 1};
avp_arity('Supported-Features', 'AVP') -> {0, '*'};
avp_arity('TDF-Information', 'TDF-Destination-Realm') ->
    {0, 1};
avp_arity('TDF-Information', 'TDF-Destination-Host') ->
    {0, 1};
avp_arity('TDF-Information', 'TDF-IP-Address') ->
    {0, 1};
avp_arity('Packet-Filter-Information',
	  'Packet-Filter-Identifier') ->
    {0, 1};
avp_arity('Packet-Filter-Information', 'Precedence') ->
    {0, 1};
avp_arity('Packet-Filter-Information',
	  'Packet-Filter-Content') ->
    {0, 1};
avp_arity('Packet-Filter-Information',
	  'ToS-Traffic-Class') ->
    {0, 1};
avp_arity('Packet-Filter-Information',
	  'Security-Parameter-Index') ->
    {0, 1};
avp_arity('Packet-Filter-Information', 'Flow-Label') ->
    {0, 1};
avp_arity('Packet-Filter-Information',
	  'Flow-Direction') ->
    {0, 1};
avp_arity('Packet-Filter-Information', 'AVP') ->
    {0, '*'};
avp_arity('User-Equipment-Info',
	  'User-Equipment-Info-Type') ->
    1;
avp_arity('User-Equipment-Info',
	  'User-Equipment-Info-Value') ->
    1;
avp_arity('Default-EPS-Bearer-QoS',
	  'QoS-Class-Identifier') ->
    {0, 1};
avp_arity('Default-EPS-Bearer-QoS',
	  'Allocation-Retention-Priority') ->
    {0, 1};
avp_arity('Default-EPS-Bearer-QoS', 'AVP') -> {0, '*'};
avp_arity('TFT-Packet-Filter-Information',
	  'Precedence') ->
    {0, 1};
avp_arity('TFT-Packet-Filter-Information',
	  'TFT-Filter') ->
    {0, 1};
avp_arity('TFT-Packet-Filter-Information',
	  'ToS-Traffic-Class') ->
    {0, 1};
avp_arity('TFT-Packet-Filter-Information',
	  'Security-Parameter-Index') ->
    {0, 1};
avp_arity('TFT-Packet-Filter-Information',
	  'Flow-Label') ->
    {0, 1};
avp_arity('TFT-Packet-Filter-Information',
	  'Flow-Direction') ->
    {0, 1};
avp_arity('TFT-Packet-Filter-Information', 'AVP') ->
    {0, '*'};
avp_arity('Charging-Rule-Report',
	  'Charging-Rule-Name') ->
    {0, '*'};
avp_arity('Charging-Rule-Report',
	  'Charging-Rule-Base-Name') ->
    {0, '*'};
avp_arity('Charging-Rule-Report',
	  'Bearer-Identifier') ->
    {0, 1};
avp_arity('Charging-Rule-Report', 'PCC-Rule-Status') ->
    {0, 1};
avp_arity('Charging-Rule-Report',
	  'Rule-Failure-Code') ->
    {0, 1};
avp_arity('Charging-Rule-Report',
	  'Final-Unit-Indication') ->
    {0, 1};
avp_arity('Charging-Rule-Report', 'AVP') -> {0, '*'};
avp_arity('Final-Unit-Indication',
	  'Final-Unit-Action') ->
    {0, 1};
avp_arity('Final-Unit-Indication',
	  'Restriction-Filter-Rule') ->
    {0, '*'};
avp_arity('Final-Unit-Indication', 'Filter-Id') ->
    {0, '*'};
avp_arity('Final-Unit-Indication', 'Redirect-Server') ->
    {0, 1};
avp_arity('Redirect-Server', 'Redirect-Address-Type') ->
    1;
avp_arity('Redirect-Server',
	  'Redirect-Server-Address') ->
    1;
avp_arity('Application-Detection-Information',
	  'TDF-Application-Identifier') ->
    {0, 1};
avp_arity('Application-Detection-Information',
	  'TDF-Application-Instance-Identifier') ->
    {0, 1};
avp_arity('Application-Detection-Information',
	  'Flow-Information') ->
    {0, '*'};
avp_arity('Application-Detection-Information', 'AVP') ->
    {0, '*'};
avp_arity('Event-Report-Indication', 'Event-Trigger') ->
    {0, '*'};
avp_arity('Event-Report-Indication',
	  'User-CSG-Information') ->
    {0, 1};
avp_arity('Event-Report-Indication', 'IP-CAN-Type') ->
    {0, 1};
avp_arity('Event-Report-Indication', 'AN-GW-Address') ->
    {0, 2};
avp_arity('Event-Report-Indication',
	  '3GPP-SGSN-Address') ->
    {0, 1};
avp_arity('Event-Report-Indication',
	  '3GPP-SGSN-Ipv6-Address') ->
    {0, 1};
avp_arity('Event-Report-Indication',
	  '3GPP-SGSN-MCC-MNC') ->
    {0, 1};
avp_arity('Event-Report-Indication',
	  'Framed-IP-Address') ->
    {0, 1};
avp_arity('Event-Report-Indication', 'RAT-Type') ->
    {0, 1};
avp_arity('Event-Report-Indication', 'RAI') -> {0, 1};
avp_arity('Event-Report-Indication',
	  '3GPP-User-Location-Info') ->
    {0, 1};
avp_arity('Event-Report-Indication', 'Trace-Data') ->
    {0, 1};
avp_arity('Event-Report-Indication',
	  'Trace-Reference') ->
    {0, 1};
avp_arity('Event-Report-Indication',
	  'Routing-IP-Address') ->
    {0, 1};
avp_arity('Event-Report-Indication',
	  'UE-Local-IP-Address') ->
    {0, 1};
avp_arity('Event-Report-Indication',
	  'HeNB-Local-IP-Address') ->
    {0, 1};
avp_arity('Event-Report-Indication',
	  'UDP-Source-Port') ->
    {0, 1};
avp_arity('Event-Report-Indication', 'AVP') -> {0, '*'};
avp_arity('Trace-Data', 'Trace-Reference') -> 1;
avp_arity('Trace-Data', 'Trace-Depth') -> 1;
avp_arity('Trace-Data', 'Trace-NE-Type-List') -> 1;
avp_arity('Trace-Data', 'Trace-Interface-List') ->
    {0, 1};
avp_arity('Trace-Data', 'Trace-Event-List') -> {0, 1};
avp_arity('Trace-Data', 'OMC-Id') -> {0, 1};
avp_arity('Trace-Data', 'Trace-Collection-Entity') ->
    {0, 1};
avp_arity('Trace-Data', 'AVP') -> {0, '*'};
avp_arity('Access-Network-Charging-Identifier-Gx',
	  'Access-Network-Charging-Identifier-Value') ->
    1;
avp_arity('Access-Network-Charging-Identifier-Gx',
	  'Charging-Rule-Base-Name') ->
    {0, '*'};
avp_arity('Access-Network-Charging-Identifier-Gx',
	  'Charging-Rule-Name') ->
    {0, '*'};
avp_arity('CoA-Information', 'Tunnel-Information') -> 1;
avp_arity('CoA-Information', 'CoA-IP-Address') -> 1;
avp_arity('CoA-Information', 'AVP') -> {0, '*'};
avp_arity('Tunnel-Information',
	  'Tunnel-Header-Length') ->
    {0, 1};
avp_arity('Tunnel-Information',
	  'Tunnel-Header-Filter') ->
    {0, 1};
avp_arity('Tunnel-Information', 'AVP') -> {0, '*'};
avp_arity('Usage-Monitoring-Information',
	  'Monitoring-Key') ->
    {0, 1};
avp_arity('Usage-Monitoring-Information',
	  'Granted-Service-Unit') ->
    {0, 2};
avp_arity('Usage-Monitoring-Information',
	  'Used-Service-Unit') ->
    {0, 2};
avp_arity('Usage-Monitoring-Information',
	  'Usage-Monitoring-Level') ->
    {0, 1};
avp_arity('Usage-Monitoring-Information',
	  'Usage-Monitoring-Report') ->
    {0, 1};
avp_arity('Usage-Monitoring-Information',
	  'Usage-Monitoring-Support') ->
    {0, 1};
avp_arity('Usage-Monitoring-Information', 'AVP') ->
    {0, '*'};
avp_arity('Granted-Service-Unit',
	  'Tariff-Time-Change') ->
    {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Time') -> {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Money') -> {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Total-Octets') ->
    {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Input-Octets') ->
    {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Output-Octets') ->
    {0, 1};
avp_arity('Granted-Service-Unit',
	  'CC-Service-Specific-Units') ->
    {0, 1};
avp_arity('Granted-Service-Unit', 'AVP') -> {0, '*'};
avp_arity('CC-Money', 'Unit-Value') -> 1;
avp_arity('CC-Money', 'Currency-Code') -> {0, 1};
avp_arity('Used-Service-Unit', 'Reporting-Reason') ->
    {0, 1};
avp_arity('Used-Service-Unit', 'Tariff-Change-Usage') ->
    {0, 1};
avp_arity('Used-Service-Unit', 'CC-Time') -> {0, 1};
avp_arity('Used-Service-Unit', 'CC-Total-Octets') ->
    {0, 1};
avp_arity('Used-Service-Unit', 'CC-Input-Octets') ->
    {0, 1};
avp_arity('Used-Service-Unit', 'CC-Output-Octets') ->
    {0, 1};
avp_arity('Used-Service-Unit',
	  'CC-Service-Specific-Units') ->
    {0, 1};
avp_arity('Used-Service-Unit',
	  'Event-Charging-TimeStamp') ->
    {0, '*'};
avp_arity('Used-Service-Unit', 'AVP') -> {0, '*'};
avp_arity('Routing-Rule-Install',
	  'Routing-Rule-Definition') ->
    {0, '*'};
avp_arity('Routing-Rule-Install', 'AVP') -> {0, '*'};
avp_arity('Routing-Rule-Definition',
	  'Routing-Rule-Identifier') ->
    1;
avp_arity('Routing-Rule-Definition',
	  'Routing-Filter') ->
    {0, '*'};
avp_arity('Routing-Rule-Definition', 'Precedence') ->
    {0, 1};
avp_arity('Routing-Rule-Definition',
	  'Routing-IP-Address') ->
    {0, 1};
avp_arity('Routing-Rule-Definition', 'AVP') -> {0, '*'};
avp_arity('Routing-Filter', 'Flow-Description') -> 1;
avp_arity('Routing-Filter', 'Flow-Direction') -> 1;
avp_arity('Routing-Filter', 'ToS-Traffic-Class') ->
    {0, 1};
avp_arity('Routing-Filter',
	  'Security-Parameter-Index') ->
    {0, 1};
avp_arity('Routing-Filter', 'Flow-Label') -> {0, 1};
avp_arity('Routing-Filter', 'AVP') -> {0, '*'};
avp_arity('Routing-Rule-Remove',
	  'Routing-Rule-Identifier') ->
    {0, '*'};
avp_arity('Routing-Rule-Remove', 'AVP') -> {0, '*'};
avp_arity('Unit-Value', 'Value-Digits') -> 1;
avp_arity('Unit-Value', 'Exponent') -> {0, 1};
avp_arity('User-CSG-Information', 'CSG-Id') -> 1;
avp_arity('User-CSG-Information', 'CSG-Access-Mode') ->
    1;
avp_arity('User-CSG-Information',
	  'CSG-Membership-Indication') ->
    {0, 1};
avp_arity('Charging-Rule-Remove',
	  'Charging-Rule-Name') ->
    {0, '*'};
avp_arity('Charging-Rule-Remove',
	  'Charging-Rule-Base-Name') ->
    {0, '*'};
avp_arity('Charging-Rule-Remove',
	  'Required-Access-Info') ->
    {0, '*'};
avp_arity('Charging-Rule-Remove', 'AVP') -> {0, '*'};
avp_arity('Charging-Information',
	  'Primary-Event-Charging-Function-Name') ->
    {0, 1};
avp_arity('Charging-Information',
	  'Secondary-Event-Charging-Function-Name') ->
    {0, 1};
avp_arity('Charging-Information',
	  'Primary-Charging-Collection-Function-Name') ->
    {0, 1};
avp_arity('Charging-Information',
	  'Secondary-Charging-Collection-Function-Name') ->
    {0, 1};
avp_arity('Charging-Information', 'AVP') -> {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
	  'Granted-Service-Unit') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Requested-Service-Unit') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Used-Service-Unit') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
	  'Service-Identifier') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
	  'Rating-Group') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'G-S-U-Pool-Reference') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
	  'Validity-Time') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Result-Code') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Final-Unit-Indication') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Time-Quota-Threshold') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Volume-Quota-Threshold') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Unit-Quota-Threshold') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Quota-Holding-Time') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Quota-Consumption-Time') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Reporting-Reason') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
	  'Trigger') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'PS-Furnish-Charging-Information') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Refund-Information') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'AF-Correlation-Information') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
	  'Envelope') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
	  'Envelope-Reporting') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Time-Quota-Mechanism') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
	  'Service-Specific-Info') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
	  'QoS-Information') ->
    {0, 1};
avp_arity('Requested-Service-Unit', 'CC-Time') ->
    {0, 1};
avp_arity('Requested-Service-Unit',
	  'CC-Total-Octets') ->
    {0, 1};
avp_arity('Requested-Service-Unit',
	  'CC-Input-Octets') ->
    {0, 1};
avp_arity('Requested-Service-Unit',
	  'CC-Output-Octets') ->
    {0, 1};
avp_arity('Requested-Service-Unit',
	  'CC-Service-Specific-Units') ->
    {0, 1};
avp_arity('Requested-Service-Unit', 'AVP') -> {0, '*'};
avp_arity('G-S-U-Pool-Reference',
	  'G-S-U-Pool-Identifier') ->
    {0, 1};
avp_arity('G-S-U-Pool-Reference', 'CC-Unit-Type') ->
    {0, 1};
avp_arity('G-S-U-Pool-Reference', 'Unit-Value') ->
    {0, 1};
avp_arity('Trigger', 'Trigger-Type') -> {0, '*'};
avp_arity('Envelope', 'Envelope-Start-Time') -> {0, 1};
avp_arity('Envelope', 'Envelope-End-Time') -> {0, 1};
avp_arity('Envelope', 'CC-Total-Octets') -> {0, 1};
avp_arity('Envelope', 'CC-Input-Octets') -> {0, 1};
avp_arity('Envelope', 'CC-Output-Octets') -> {0, 1};
avp_arity('Envelope', 'CC-Service-Specific-Units') ->
    {0, 1};
avp_arity('Envelope', 'AVP') -> {0, '*'};
avp_arity('AF-Correlation-Information',
	  'AF-Charging-Identifier') ->
    {0, 1};
avp_arity('AF-Correlation-Information', 'Flows') ->
    {0, '*'};
avp_arity('Service-Specific-Info',
	  'Service-Specific-Data') ->
    {0, 1};
avp_arity('Service-Specific-Info',
	  'Service-Specific-Type') ->
    {0, 1};
avp_arity('Service-Information', 'Subscription-Id') ->
    {0, '*'};
avp_arity('Service-Information', 'AoC-Information') ->
    {0, 1};
avp_arity('Service-Information', 'PS-Information') ->
    {0, 1};
avp_arity('AoC-Information', 'AoC-Cost-Information') ->
    {0, 1};
avp_arity('AoC-Information', 'Tariff-Information') ->
    {0, 1};
avp_arity('AoC-Information',
	  'AoC-Subscription-Information') ->
    {0, 1};
avp_arity('AoC-Cost-Information', 'Accumulated-Cost') ->
    {0, 1};
avp_arity('AoC-Cost-Information', 'Incremental-Cost') ->
    {0, '*'};
avp_arity('AoC-Cost-Information', 'Currency-Code') ->
    {0, 1};
avp_arity('Accumulated-Cost', 'Value-Digits') -> 1;
avp_arity('Accumulated-Cost', 'Exponent') -> {0, 1};
avp_arity('Incremental-Cost', 'Value-Digits') -> 1;
avp_arity('Incremental-Cost', 'Exponent') -> {0, 1};
avp_arity('Tariff-Information', 'Current-Tariff') -> 1;
avp_arity('Tariff-Information', 'Tariff-Time-Change') ->
    {0, 1};
avp_arity('Tariff-Information', 'Next-Tariff') ->
    {0, 1};
avp_arity('Current-Tariff', 'Currency-Code') -> {0, 1};
avp_arity('Current-Tariff', 'Scale-Factor') -> {0, 1};
avp_arity('Current-Tariff', 'Rate-Element') -> {0, '*'};
avp_arity('Scale-Factor', 'Value-Digits') -> 1;
avp_arity('Scale-Factor', 'Exponent') -> {0, 1};
avp_arity('Rate-Element', 'CC-Unit-Type') -> 1;
avp_arity('Rate-Element', 'Charge-Reason-Code') ->
    {0, 1};
avp_arity('Rate-Element', 'Unit-Value') -> {0, 1};
avp_arity('Rate-Element', 'Unit-Cost') -> {0, 1};
avp_arity('Rate-Element', 'Unit-Quota-Threshold') ->
    {0, 1};
avp_arity('Unit-Cost', 'Value-Digits') -> 1;
avp_arity('Unit-Cost', 'Exponent') -> {0, 1};
avp_arity('Next-Tariff', 'Currency-Code') -> {0, 1};
avp_arity('Next-Tariff', 'Scale-Factor') -> {0, 1};
avp_arity('Next-Tariff', 'Rate-Element') -> {0, '*'};
avp_arity('AoC-Subscription-Information',
	  'AoC-Service') ->
    {0, '*'};
avp_arity('AoC-Subscription-Information',
	  'AoC-Format') ->
    {0, 1};
avp_arity('AoC-Subscription-Information',
	  'Preferred-AoC-Currency') ->
    {0, 1};
avp_arity('AoC-Service',
	  'AoC-Service-Obligatory-Type') ->
    {0, 1};
avp_arity('AoC-Service', 'AoC-Service-Type') -> {0, 1};
avp_arity('PS-Information', '3GPP-Charging-Id') ->
    {0, 1};
avp_arity('PS-Information',
	  'PDN-Connection-Charging-ID') ->
    {0, 1};
avp_arity('PS-Information', 'Node-Id') -> {0, 1};
avp_arity('PS-Information', '3GPP-PDP-Type') -> {0, 1};
avp_arity('PS-Information', 'PDP-Address') -> {0, '*'};
avp_arity('PS-Information',
	  'PDP-Address-Prefix-Length') ->
    {0, 1};
avp_arity('PS-Information', 'Dynamic-Address-Flag') ->
    {0, 1};
avp_arity('PS-Information',
	  'Dynamic-Address-Flag-Extension') ->
    {0, 1};
avp_arity('PS-Information', 'QoS-Information') ->
    {0, 1};
avp_arity('PS-Information', 'SGSN-Address') -> {0, '*'};
avp_arity('PS-Information', 'GGSN-Address') -> {0, '*'};
avp_arity('PS-Information', 'SGW-Address') -> {0, '*'};
avp_arity('PS-Information', 'CG-Address') -> {0, 1};
avp_arity('PS-Information', 'Serving-Node-Type') ->
    {0, 1};
avp_arity('PS-Information', 'SGW-Change') -> {0, 1};
avp_arity('PS-Information', '3GPP-IMSI-MCC-MNC') ->
    {0, 1};
avp_arity('PS-Information',
	  'IMSI-Unauthenticated-Flag') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-GGSN-MCC-MNC') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-NSAPI') -> {0, 1};
avp_arity('PS-Information', 'Called-Station-Id') ->
    {0, 1};
avp_arity('PS-Information',
	  '3GPP-Session-Stop-Indicator') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-Selection-Mode') ->
    {0, 1};
avp_arity('PS-Information',
	  '3GPP-Charging-Characteristics') ->
    {0, 1};
avp_arity('PS-Information',
	  'Charging-Characteristics-Selection-Mode') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-SGSN-MCC-MNC') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-MS-TimeZone') ->
    {0, 1};
avp_arity('PS-Information',
	  'Charging-Rule-Base-Name') ->
    {0, 1};
avp_arity('PS-Information',
	  '3GPP-User-Location-Info') ->
    {0, 1};
avp_arity('PS-Information',
	  'User-Location-Info-Time') ->
    {0, 1};
avp_arity('PS-Information', 'User-CSG-Information') ->
    {0, 1};
avp_arity('PS-Information', '3GPP-RAT-Type') -> {0, 1};
avp_arity('PS-Information',
	  'PS-Furnish-Charging-Information') ->
    {0, 1};
avp_arity('PS-Information', 'PDP-Context-Type') ->
    {0, 1};
avp_arity('PS-Information', 'User-Equipment-Info') ->
    {0, 1};
avp_arity('PS-Information', 'Change-Condition') ->
    {0, 1};
avp_arity('PS-Information', 'Low-Priority-Indicator') ->
    {0, 1};
avp_arity('Time-Quota-Mechanism', 'Time-Quota-Type') ->
    1;
avp_arity('Time-Quota-Mechanism',
	  'Base-Time-Interval') ->
    1;
avp_arity('PS-Furnish-Charging-Information',
	  '3GPP-Charging-Id') ->
    1;
avp_arity('PS-Furnish-Charging-Information',
	  'PS-Free-Format-Data') ->
    1;
avp_arity('PS-Furnish-Charging-Information',
	  'PS-Append-Free-Format-Data') ->
    {0, 1};
avp_arity('E2E-Sequence', 'AVP') -> {2, '*'};
avp_arity(_, _) -> 0.

avp_header('3GPP-Charging-Characteristics') ->
    {13, 192, 10415};
avp_header('3GPP-Charging-Id') -> {2, 192, 10415};
avp_header('3GPP-GGSN-Address') -> {7, 192, 10415};
avp_header('3GPP-GGSN-Ipv6-Address') ->
    {16, 192, 10415};
avp_header('3GPP-GGSN-MCC-MNC') -> {9, 192, 10415};
avp_header('3GPP-IMSI-MCC-MNC') -> {8, 192, 10415};
avp_header('3GPP-MS-TimeZone') -> {23, 192, 10415};
avp_header('3GPP-NSAPI') -> {10, 192, 10415};
avp_header('3GPP-PDP-Type') -> {3, 192, 10415};
avp_header('3GPP-RAT-Type') -> {21, 192, 10415};
avp_header('3GPP-SGSN-Address') -> {6, 192, 10415};
avp_header('3GPP-SGSN-Ipv6-Address') ->
    {15, 192, 10415};
avp_header('3GPP-SGSN-MCC-MNC') -> {18, 192, 10415};
avp_header('3GPP-Selection-Mode') -> {12, 192, 10415};
avp_header('3GPP-Session-Stop-Indicator') ->
    {11, 192, 10415};
avp_header('3GPP-User-Location-Info') ->
    {22, 192, 10415};
avp_header('AF-Charging-Identifier') ->
    {505, 192, 10415};
avp_header('AF-Correlation-Information') ->
    {1276, 192, 10415};
avp_header('AF-Signalling-Protocol') ->
    {529, 192, 10415};
avp_header('AN-GW-Address') -> {1050, 192, 10415};
avp_header('AN-GW-Status') -> {2811, 192, 10415};
avp_header('APN-Aggregate-Max-Bitrate-DL') ->
    {1040, 192, 10415};
avp_header('APN-Aggregate-Max-Bitrate-UL') ->
    {1041, 192, 10415};
avp_header('Access-Network-Charging-Address') ->
    {501, 192, 10415};
avp_header('Access-Network-Charging-Identifier-Gx') ->
    {1022, 192, 10415};
avp_header('Access-Network-Charging-Identifier-Value') ->
    {503, 192, 10415};
avp_header('Accounting-Realtime-Required') ->
    {483, 64, undefined};
avp_header('Accounting-Record-Number') ->
    {485, 64, undefined};
avp_header('Accounting-Record-Type') ->
    {480, 64, undefined};
avp_header('Accounting-Sub-Session-Id') ->
    {287, 64, undefined};
avp_header('Acct-Application-Id') ->
    {259, 64, undefined};
avp_header('Acct-Interim-Interval') ->
    {85, 64, undefined};
avp_header('Acct-Multi-Session-Id') ->
    {50, 64, undefined};
avp_header('Acct-Session-Id') -> {44, 64, undefined};
avp_header('Accumulated-Cost') -> {2052, 192, 10415};
avp_header('Allocation-Retention-Priority') ->
    {1034, 192, 10415};
avp_header('AoC-Cost-Information') ->
    {2053, 192, 10415};
avp_header('AoC-Format') -> {2310, 192, 10415};
avp_header('AoC-Information') -> {2054, 192, 10415};
avp_header('AoC-Request-Type') -> {2055, 192, 10415};
avp_header('AoC-Service') -> {2311, 192, 10415};
avp_header('AoC-Service-Obligatory-Type') ->
    {2312, 192, 10415};
avp_header('AoC-Service-Type') -> {2313, 192, 10415};
avp_header('AoC-Subscription-Information') ->
    {2314, 192, 10415};
avp_header('Application-Detection-Information') ->
    {1098, 192, 10415};
avp_header('Application-Service-Provider-Identity') ->
    {532, 192, 10415};
avp_header('Auth-Application-Id') ->
    {258, 64, undefined};
avp_header('Auth-Grace-Period') -> {276, 64, undefined};
avp_header('Auth-Request-Type') -> {274, 64, undefined};
avp_header('Auth-Session-State') ->
    {277, 64, undefined};
avp_header('Authorization-Lifetime') ->
    {291, 64, undefined};
avp_header('Base-Time-Interval') -> {1265, 192, 10415};
avp_header('Bearer-Control-Mode') -> {1023, 192, 10415};
avp_header('Bearer-Identifier') -> {1020, 192, 10415};
avp_header('Bearer-Operation') -> {1021, 192, 10415};
avp_header('Bearer-Usage') -> {1000, 192, 10415};
avp_header('CC-Correlation-Id') -> {411, 64, undefined};
avp_header('CC-Input-Octets') -> {412, 64, undefined};
avp_header('CC-Money') -> {413, 64, undefined};
avp_header('CC-Output-Octets') -> {414, 64, undefined};
avp_header('CC-Request-Number') -> {415, 64, undefined};
avp_header('CC-Request-Type') -> {416, 64, undefined};
avp_header('CC-Service-Specific-Units') ->
    {417, 64, undefined};
avp_header('CC-Session-Failover') ->
    {418, 64, undefined};
avp_header('CC-Time') -> {420, 64, undefined};
avp_header('CC-Total-Octets') -> {421, 64, undefined};
avp_header('CC-Unit-Type') -> {454, 64, undefined};
avp_header('CG-Address') -> {846, 192, 10415};
avp_header('CSG-Access-Mode') -> {2317, 192, 10415};
avp_header('CSG-Id') -> {1437, 192, 10415};
avp_header('CSG-Information-Reporting') ->
    {1071, 192, 10415};
avp_header('CSG-Membership-Indication') ->
    {2318, 192, 10415};
avp_header('Called-Station-Id') -> {30, 64, undefined};
avp_header('Change-Condition') -> {2037, 192, 10415};
avp_header('Charge-Reason-Code') -> {2118, 192, 10415};
avp_header('Charging-Characteristics-Selection-Mode') ->
    {2066, 192, 10415};
avp_header('Charging-Correlation-Indicator') ->
    {1073, 192, 10415};
avp_header('Charging-Information') -> {618, 192, 10415};
avp_header('Charging-Rule-Base-Name') ->
    {1004, 192, 10415};
avp_header('Charging-Rule-Definition') ->
    {1003, 192, 10415};
avp_header('Charging-Rule-Install') ->
    {1001, 192, 10415};
avp_header('Charging-Rule-Name') -> {1005, 192, 10415};
avp_header('Charging-Rule-Remove') ->
    {1002, 192, 10415};
avp_header('Charging-Rule-Report') ->
    {1018, 192, 10415};
avp_header('Class') -> {25, 64, undefined};
avp_header('CoA-IP-Address') -> {1035, 192, 10415};
avp_header('CoA-Information') -> {1039, 192, 10415};
avp_header('Currency-Code') -> {425, 64, undefined};
avp_header('Current-Tariff') -> {2056, 192, 10415};
avp_header('Default-EPS-Bearer-QoS') ->
    {1049, 192, 10415};
avp_header('Destination-Host') -> {293, 64, undefined};
avp_header('Destination-Realm') -> {283, 64, undefined};
avp_header('Disconnect-Cause') -> {273, 64, undefined};
avp_header('Dynamic-Address-Flag') ->
    {2051, 192, 10415};
avp_header('Dynamic-Address-Flag-Extension') ->
    {2068, 192, 10415};
avp_header('E2E-Sequence') -> {300, 64, undefined};
avp_header('Envelope') -> {1266, 192, 10415};
avp_header('Envelope-End-Time') -> {1267, 192, 10415};
avp_header('Envelope-Reporting') -> {1268, 192, 10415};
avp_header('Envelope-Start-Time') -> {1269, 192, 10415};
avp_header('Error-Message') -> {281, 0, undefined};
avp_header('Error-Reporting-Host') ->
    {294, 0, undefined};
avp_header('Event-Charging-TimeStamp') ->
    {1258, 192, 10415};
avp_header('Event-Report-Indication') ->
    {1033, 192, 10415};
avp_header('Event-Timestamp') -> {55, 64, undefined};
avp_header('Event-Trigger') -> {1006, 192, 10415};
avp_header('Experimental-Result') ->
    {297, 64, undefined};
avp_header('Experimental-Result-Code') ->
    {298, 64, undefined};
avp_header('Exponent') -> {429, 64, undefined};
avp_header('Failed-AVP') -> {279, 64, undefined};
avp_header('Feature-List') -> {630, 192, 10415};
avp_header('Feature-List-ID') -> {629, 192, 10415};
avp_header('Filter-Id') -> {11, 64, undefined};
avp_header('Final-Unit-Action') -> {449, 64, undefined};
avp_header('Final-Unit-Indication') ->
    {430, 64, undefined};
avp_header('Firmware-Revision') -> {267, 0, undefined};
avp_header('Flow-Description') -> {507, 192, 10415};
avp_header('Flow-Direction') -> {1080, 192, 10415};
avp_header('Flow-Information') -> {1058, 192, 10415};
avp_header('Flow-Label') -> {1057, 192, 10415};
avp_header('Flow-Number') -> {509, 192, 10415};
avp_header('Flow-Status') -> {511, 192, 10415};
avp_header('Flows') -> {510, 192, 10415};
avp_header('Framed-IP-Address') -> {8, 64, undefined};
avp_header('Framed-Ipv6-Prefix') -> {97, 64, undefined};
avp_header('G-S-U-Pool-Identifier') ->
    {453, 64, undefined};
avp_header('G-S-U-Pool-Reference') ->
    {457, 64, undefined};
avp_header('GGSN-Address') -> {847, 192, 10415};
avp_header('Granted-Service-Unit') ->
    {431, 64, undefined};
avp_header('Guaranteed-Bitrate-DL') ->
    {1025, 192, 10415};
avp_header('Guaranteed-Bitrate-UL') ->
    {1026, 192, 10415};
avp_header('HeNB-Local-IP-Address') ->
    {2804, 192, 10415};
avp_header('Host-IP-Address') -> {257, 64, undefined};
avp_header('IMSI-Unauthenticated-Flag') ->
    {2308, 192, 10415};
avp_header('IP-CAN-Type') -> {1027, 192, 10415};
avp_header('Inband-Security-Id') ->
    {299, 64, undefined};
avp_header('Incremental-Cost') -> {2062, 192, 10415};
avp_header('Low-Priority-Indicator') ->
    {2602, 192, 10415};
avp_header('Max-Requested-Bandwidth-DL') ->
    {515, 192, 10415};
avp_header('Max-Requested-Bandwidth-UL') ->
    {516, 192, 10415};
avp_header('Media-Component-Number') ->
    {518, 192, 10415};
avp_header('Metering-Method') -> {1007, 192, 10415};
avp_header('Monitoring-Key') -> {1066, 192, 10415};
avp_header('Multi-Round-Time-Out') ->
    {272, 64, undefined};
avp_header('Multiple-Services-Credit-Control') ->
    {456, 64, undefined};
avp_header('Multiple-Services-Indicator') ->
    {455, 64, undefined};
avp_header('Mute-Notification') -> {2809, 192, 10415};
avp_header('Network-Request-Support') ->
    {1024, 192, 10415};
avp_header('Next-Tariff') -> {2057, 192, 10415};
avp_header('Node-Id') -> {2064, 192, 10415};
avp_header('OMC-Id') -> {1466, 192, 10415};
avp_header('Offline') -> {1008, 192, 10415};
avp_header('Online') -> {1009, 192, 10415};
avp_header('Origin-Host') -> {264, 64, undefined};
avp_header('Origin-Realm') -> {296, 64, undefined};
avp_header('Origin-State-Id') -> {278, 64, undefined};
avp_header('PCC-Rule-Status') -> {1019, 192, 10415};
avp_header('PDN-Connection-Charging-ID') ->
    {2050, 192, 10415};
avp_header('PDN-Connection-ID') -> {1065, 192, 10415};
avp_header('PDP-Address') -> {1227, 192, 10415};
avp_header('PDP-Address-Prefix-Length') ->
    {2606, 192, 10415};
avp_header('PDP-Context-Type') -> {1247, 192, 10415};
avp_header('PS-Append-Free-Format-Data') ->
    {867, 192, 10415};
avp_header('PS-Free-Format-Data') -> {866, 192, 10415};
avp_header('PS-Furnish-Charging-Information') ->
    {865, 192, 10415};
avp_header('PS-Information') -> {874, 192, 10415};
avp_header('PS-to-CS-Session-Continuity') ->
    {1099, 192, 10415};
avp_header('Packet-Filter-Content') ->
    {1059, 192, 10415};
avp_header('Packet-Filter-Identifier') ->
    {1060, 192, 10415};
avp_header('Packet-Filter-Information') ->
    {1061, 192, 10415};
avp_header('Packet-Filter-Operation') ->
    {1062, 192, 10415};
avp_header('Packet-Filter-Usage') -> {1072, 192, 10415};
avp_header('Pre-emption-Capability') ->
    {1047, 192, 10415};
avp_header('Pre-emption-Vulnerability') ->
    {1048, 192, 10415};
avp_header('Precedence') -> {1010, 192, 10415};
avp_header('Preferred-AoC-Currency') ->
    {2315, 192, 10415};
avp_header('Primary-Charging-Collection-Function-Name') ->
    {621, 192, 10415};
avp_header('Primary-Event-Charging-Function-Name') ->
    {619, 192, 10415};
avp_header('Priority-Level') -> {1046, 192, 10415};
avp_header('Product-Name') -> {269, 0, undefined};
avp_header('Proxy-Host') -> {280, 64, undefined};
avp_header('Proxy-Info') -> {284, 64, undefined};
avp_header('Proxy-State') -> {33, 64, undefined};
avp_header('QoS-Class-Identifier') ->
    {1028, 192, 10415};
avp_header('QoS-Information') -> {1016, 192, 10415};
avp_header('QoS-Negotiation') -> {1029, 192, 10415};
avp_header('QoS-Upgrade') -> {1030, 192, 10415};
avp_header('Quota-Consumption-Time') ->
    {881, 192, 10415};
avp_header('Quota-Holding-Time') -> {871, 192, 10415};
avp_header('RAI') -> {909, 192, 10415};
avp_header('RAT-Type') -> {1032, 192, 10415};
avp_header('Rate-Element') -> {2058, 192, 10415};
avp_header('Rating-Group') -> {432, 64, undefined};
avp_header('Re-Auth-Request-Type') ->
    {285, 64, undefined};
avp_header('Redirect-Address-Type') ->
    {433, 64, undefined};
avp_header('Redirect-Host') -> {292, 64, undefined};
avp_header('Redirect-Host-Usage') ->
    {261, 64, undefined};
avp_header('Redirect-Information') ->
    {1085, 192, 10415};
avp_header('Redirect-Max-Cache-Time') ->
    {262, 64, undefined};
avp_header('Redirect-Server') -> {434, 64, undefined};
avp_header('Redirect-Server-Address') ->
    {435, 64, undefined};
avp_header('Redirect-Support') -> {1086, 192, 10415};
avp_header('Refund-Information') -> {2022, 192, 10415};
avp_header('Reporting-Level') -> {1011, 192, 10415};
avp_header('Reporting-Reason') -> {872, 192, 10415};
avp_header('Requested-Action') -> {436, 64, undefined};
avp_header('Requested-Service-Unit') ->
    {437, 64, undefined};
avp_header('Required-Access-Info') -> {536, 192, 10415};
avp_header('Resource-Allocation-Notification') ->
    {1063, 192, 10415};
avp_header('Restriction-Filter-Rule') ->
    {438, 64, undefined};
avp_header('Result-Code') -> {268, 64, undefined};
avp_header('Revalidation-Time') -> {1042, 192, 10415};
avp_header('Route-Record') -> {282, 64, undefined};
avp_header('Routing-Filter') -> {1078, 192, 10415};
avp_header('Routing-IP-Address') -> {1079, 192, 10415};
avp_header('Routing-Rule-Definition') ->
    {1076, 192, 10415};
avp_header('Routing-Rule-Identifier') ->
    {1077, 192, 10415};
avp_header('Routing-Rule-Install') ->
    {1081, 192, 10415};
avp_header('Routing-Rule-Remove') -> {1075, 192, 10415};
avp_header('Rule-Activation-Time') ->
    {1043, 192, 10415};
avp_header('Rule-Deactivation-Time') ->
    {1044, 192, 10415};
avp_header('Rule-Failure-Code') -> {1031, 192, 10415};
avp_header('SGSN-Address') -> {1228, 192, 10415};
avp_header('SGW-Address') -> {2067, 192, 10415};
avp_header('SGW-Change') -> {2065, 192, 10415};
avp_header('Scale-Factor') -> {2059, 192, 10415};
avp_header('Secondary-Charging-Collection-Function-Name') ->
    {622, 192, 10415};
avp_header('Secondary-Event-Charging-Function-Name') ->
    {620, 192, 10415};
avp_header('Security-Parameter-Index') ->
    {1056, 192, 10415};
avp_header('Service-Context-Id') ->
    {461, 64, undefined};
avp_header('Service-Identifier') ->
    {439, 64, undefined};
avp_header('Service-Information') -> {873, 192, 10415};
avp_header('Service-Specific-Data') ->
    {863, 192, 10415};
avp_header('Service-Specific-Info') ->
    {1249, 192, 10415};
avp_header('Service-Specific-Type') ->
    {1257, 192, 10415};
avp_header('Serving-Node-Type') -> {2047, 192, 10415};
avp_header('Session-Binding') -> {270, 64, undefined};
avp_header('Session-Id') -> {263, 64, undefined};
avp_header('Session-Server-Failover') ->
    {271, 64, undefined};
avp_header('Session-Timeout') -> {27, 64, undefined};
avp_header('Sponsor-Identity') -> {531, 192, 10415};
avp_header('Subscription-Id') -> {443, 64, undefined};
avp_header('Subscription-Id-Data') ->
    {444, 64, undefined};
avp_header('Subscription-Id-Type') ->
    {450, 64, undefined};
avp_header('Supported-Features') -> {628, 192, 10415};
avp_header('Supported-Vendor-Id') ->
    {265, 64, undefined};
avp_header('TDF-Application-Identifier') ->
    {1088, 192, 10415};
avp_header('TDF-Application-Instance-Identifier') ->
    {2802, 192, 10415};
avp_header('TDF-Destination-Host') ->
    {1089, 192, 10415};
avp_header('TDF-Destination-Realm') ->
    {1090, 192, 10415};
avp_header('TDF-IP-Address') -> {1091, 192, 10415};
avp_header('TDF-Information') -> {1087, 192, 10415};
avp_header('TFT-Filter') -> {1012, 192, 10415};
avp_header('TFT-Packet-Filter-Information') ->
    {1013, 192, 10415};
avp_header('TWAN-Identifier') -> {29, 192, 10415};
avp_header('Tariff-Change-Usage') ->
    {452, 64, undefined};
avp_header('Tariff-Information') -> {2060, 192, 10415};
avp_header('Tariff-Time-Change') ->
    {451, 64, undefined};
avp_header('Termination-Cause') -> {295, 64, undefined};
avp_header('Time-Quota-Mechanism') ->
    {1270, 192, 10415};
avp_header('Time-Quota-Threshold') -> {868, 192, 10415};
avp_header('Time-Quota-Type') -> {1271, 192, 10415};
avp_header('ToS-Traffic-Class') -> {1014, 192, 10415};
avp_header('Trace-Collection-Entity') ->
    {1452, 192, 10415};
avp_header('Trace-Data') -> {1458, 192, 10415};
avp_header('Trace-Depth') -> {1462, 192, 10415};
avp_header('Trace-Event-List') -> {1465, 192, 10415};
avp_header('Trace-Interface-List') ->
    {1464, 192, 10415};
avp_header('Trace-NE-Type-List') -> {1463, 192, 10415};
avp_header('Trace-Reference') -> {1459, 192, 10415};
avp_header('Trigger') -> {1264, 192, 10415};
avp_header('Trigger-Type') -> {870, 192, 10415};
avp_header('Tunnel-Header-Filter') ->
    {1036, 192, 10415};
avp_header('Tunnel-Header-Length') ->
    {1037, 192, 10415};
avp_header('Tunnel-Information') -> {1038, 192, 10415};
avp_header('UDP-Source-Port') -> {2806, 192, 10415};
avp_header('UE-Local-IP-Address') -> {2805, 192, 10415};
avp_header('Unit-Cost') -> {2061, 192, 10415};
avp_header('Unit-Quota-Threshold') ->
    {1226, 192, 10415};
avp_header('Unit-Value') -> {445, 64, undefined};
avp_header('Usage-Monitoring-Information') ->
    {1067, 192, 10415};
avp_header('Usage-Monitoring-Level') ->
    {1068, 192, 10415};
avp_header('Usage-Monitoring-Report') ->
    {1069, 192, 10415};
avp_header('Usage-Monitoring-Support') ->
    {1070, 192, 10415};
avp_header('Used-Service-Unit') -> {446, 64, undefined};
avp_header('User-CSG-Information') ->
    {2319, 192, 10415};
avp_header('User-Equipment-Info') ->
    {458, 64, undefined};
avp_header('User-Equipment-Info-Type') ->
    {459, 64, undefined};
avp_header('User-Equipment-Info-Value') ->
    {460, 64, undefined};
avp_header('User-Location-Info-Time') ->
    {2812, 192, 10415};
avp_header('User-Name') -> {1, 64, undefined};
avp_header('Validity-Time') -> {448, 64, undefined};
avp_header('Value-Digits') -> {447, 64, undefined};
avp_header('Vendor-Id') -> {266, 64, undefined};
avp_header('Vendor-Specific-Application-Id') ->
    {260, 64, undefined};
avp_header('Volume-Quota-Threshold') ->
    {869, 192, 10415};
avp_header(_) -> erlang:error(badarg).

avp(T, Data, '3GPP-Charging-Characteristics') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, '3GPP-Charging-Id') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-GGSN-Address') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-GGSN-Ipv6-Address') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-GGSN-MCC-MNC') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, '3GPP-IMSI-MCC-MNC') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, '3GPP-MS-TimeZone') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-NSAPI') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-PDP-Type') ->
    enumerated_avp(T, '3GPP-PDP-Type', Data);
avp(T, Data, '3GPP-RAT-Type') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-SGSN-Address') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-SGSN-Ipv6-Address') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-SGSN-MCC-MNC') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, '3GPP-Selection-Mode') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, '3GPP-Session-Stop-Indicator') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, '3GPP-User-Location-Info') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'AF-Charging-Identifier') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'AF-Correlation-Information') ->
    grouped_avp(T, 'AF-Correlation-Information', Data);
avp(T, Data, 'AF-Signalling-Protocol') ->
    enumerated_avp(T, 'AF-Signalling-Protocol', Data);
avp(T, Data, 'AN-GW-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'AN-GW-Status') ->
    enumerated_avp(T, 'AN-GW-Status', Data);
avp(T, Data, 'APN-Aggregate-Max-Bitrate-DL') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'APN-Aggregate-Max-Bitrate-UL') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Access-Network-Charging-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'Access-Network-Charging-Identifier-Gx') ->
    grouped_avp(T, 'Access-Network-Charging-Identifier-Gx',
		Data);
avp(T, Data,
    'Access-Network-Charging-Identifier-Value') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Accounting-Realtime-Required') ->
    enumerated_avp(T, 'Accounting-Realtime-Required', Data);
avp(T, Data, 'Accounting-Record-Number') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Accounting-Record-Type') ->
    enumerated_avp(T, 'Accounting-Record-Type', Data);
avp(T, Data, 'Accounting-Sub-Session-Id') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'Acct-Application-Id') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Acct-Interim-Interval') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Acct-Multi-Session-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Acct-Session-Id') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Accumulated-Cost') ->
    grouped_avp(T, 'Accumulated-Cost', Data);
avp(T, Data, 'Allocation-Retention-Priority') ->
    grouped_avp(T, 'Allocation-Retention-Priority', Data);
avp(T, Data, 'AoC-Cost-Information') ->
    grouped_avp(T, 'AoC-Cost-Information', Data);
avp(T, Data, 'AoC-Format') ->
    enumerated_avp(T, 'AoC-Format', Data);
avp(T, Data, 'AoC-Information') ->
    grouped_avp(T, 'AoC-Information', Data);
avp(T, Data, 'AoC-Request-Type') ->
    enumerated_avp(T, 'AoC-Request-Type', Data);
avp(T, Data, 'AoC-Service') ->
    grouped_avp(T, 'AoC-Service', Data);
avp(T, Data, 'AoC-Service-Obligatory-Type') ->
    enumerated_avp(T, 'AoC-Service-Obligatory-Type', Data);
avp(T, Data, 'AoC-Service-Type') ->
    enumerated_avp(T, 'AoC-Service-Type', Data);
avp(T, Data, 'AoC-Subscription-Information') ->
    grouped_avp(T, 'AoC-Subscription-Information', Data);
avp(T, Data, 'Application-Detection-Information') ->
    grouped_avp(T, 'Application-Detection-Information',
		Data);
avp(T, Data, 'Application-Service-Provider-Identity') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Auth-Application-Id') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Auth-Grace-Period') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Auth-Request-Type') ->
    enumerated_avp(T, 'Auth-Request-Type', Data);
avp(T, Data, 'Auth-Session-State') ->
    enumerated_avp(T, 'Auth-Session-State', Data);
avp(T, Data, 'Authorization-Lifetime') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Base-Time-Interval') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Bearer-Control-Mode') ->
    enumerated_avp(T, 'Bearer-Control-Mode', Data);
avp(T, Data, 'Bearer-Identifier') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Bearer-Operation') ->
    enumerated_avp(T, 'Bearer-Operation', Data);
avp(T, Data, 'Bearer-Usage') ->
    enumerated_avp(T, 'Bearer-Usage', Data);
avp(T, Data, 'CC-Correlation-Id') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'CC-Input-Octets') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'CC-Money') ->
    grouped_avp(T, 'CC-Money', Data);
avp(T, Data, 'CC-Output-Octets') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'CC-Request-Number') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'CC-Request-Type') ->
    enumerated_avp(T, 'CC-Request-Type', Data);
avp(T, Data, 'CC-Service-Specific-Units') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'CC-Session-Failover') ->
    enumerated_avp(T, 'CC-Session-Failover', Data);
avp(T, Data, 'CC-Time') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'CC-Total-Octets') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'CC-Unit-Type') ->
    enumerated_avp(T, 'CC-Unit-Type', Data);
avp(T, Data, 'CG-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'CSG-Access-Mode') ->
    enumerated_avp(T, 'CSG-Access-Mode', Data);
avp(T, Data, 'CSG-Id') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'CSG-Information-Reporting') ->
    enumerated_avp(T, 'CSG-Information-Reporting', Data);
avp(T, Data, 'CSG-Membership-Indication') ->
    enumerated_avp(T, 'CSG-Membership-Indication', Data);
avp(T, Data, 'Called-Station-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Change-Condition') ->
    diameter_types:'Integer32'(T, Data);
avp(T, Data, 'Charge-Reason-Code') ->
    enumerated_avp(T, 'Charge-Reason-Code', Data);
avp(T, Data,
    'Charging-Characteristics-Selection-Mode') ->
    enumerated_avp(T,
		   'Charging-Characteristics-Selection-Mode', Data);
avp(T, Data, 'Charging-Correlation-Indicator') ->
    enumerated_avp(T, 'Charging-Correlation-Indicator',
		   Data);
avp(T, Data, 'Charging-Information') ->
    grouped_avp(T, 'Charging-Information', Data);
avp(T, Data, 'Charging-Rule-Base-Name') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Charging-Rule-Definition') ->
    grouped_avp(T, 'Charging-Rule-Definition', Data);
avp(T, Data, 'Charging-Rule-Install') ->
    grouped_avp(T, 'Charging-Rule-Install', Data);
avp(T, Data, 'Charging-Rule-Name') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Charging-Rule-Remove') ->
    grouped_avp(T, 'Charging-Rule-Remove', Data);
avp(T, Data, 'Charging-Rule-Report') ->
    grouped_avp(T, 'Charging-Rule-Report', Data);
avp(T, Data, 'Class') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'CoA-IP-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'CoA-Information') ->
    grouped_avp(T, 'CoA-Information', Data);
avp(T, Data, 'Currency-Code') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Current-Tariff') ->
    grouped_avp(T, 'Current-Tariff', Data);
avp(T, Data, 'Default-EPS-Bearer-QoS') ->
    grouped_avp(T, 'Default-EPS-Bearer-QoS', Data);
avp(T, Data, 'Destination-Host') ->
    diameter_types:'DiameterIdentity'(T, Data);
avp(T, Data, 'Destination-Realm') ->
    diameter_types:'DiameterIdentity'(T, Data);
avp(T, Data, 'Disconnect-Cause') ->
    enumerated_avp(T, 'Disconnect-Cause', Data);
avp(T, Data, 'Dynamic-Address-Flag') ->
    enumerated_avp(T, 'Dynamic-Address-Flag', Data);
avp(T, Data, 'Dynamic-Address-Flag-Extension') ->
    enumerated_avp(T, 'Dynamic-Address-Flag-Extension',
		   Data);
avp(T, Data, 'E2E-Sequence') ->
    grouped_avp(T, 'E2E-Sequence', Data);
avp(T, Data, 'Envelope') ->
    grouped_avp(T, 'Envelope', Data);
avp(T, Data, 'Envelope-End-Time') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'Envelope-Reporting') ->
    enumerated_avp(T, 'Envelope-Reporting', Data);
avp(T, Data, 'Envelope-Start-Time') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'Error-Message') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Error-Reporting-Host') ->
    diameter_types:'DiameterIdentity'(T, Data);
avp(T, Data, 'Event-Charging-TimeStamp') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'Event-Report-Indication') ->
    grouped_avp(T, 'Event-Report-Indication', Data);
avp(T, Data, 'Event-Timestamp') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'Event-Trigger') ->
    enumerated_avp(T, 'Event-Trigger', Data);
avp(T, Data, 'Experimental-Result') ->
    grouped_avp(T, 'Experimental-Result', Data);
avp(T, Data, 'Experimental-Result-Code') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Exponent') ->
    diameter_types:'Integer32'(T, Data);
avp(T, Data, 'Failed-AVP') ->
    grouped_avp(T, 'Failed-AVP', Data);
avp(T, Data, 'Feature-List') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Feature-List-ID') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Filter-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Final-Unit-Action') ->
    enumerated_avp(T, 'Final-Unit-Action', Data);
avp(T, Data, 'Final-Unit-Indication') ->
    grouped_avp(T, 'Final-Unit-Indication', Data);
avp(T, Data, 'Firmware-Revision') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Flow-Description') ->
    diameter_types:'IPFilterRule'(T, Data);
avp(T, Data, 'Flow-Direction') ->
    enumerated_avp(T, 'Flow-Direction', Data);
avp(T, Data, 'Flow-Information') ->
    grouped_avp(T, 'Flow-Information', Data);
avp(T, Data, 'Flow-Label') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Flow-Number') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Flow-Status') ->
    enumerated_avp(T, 'Flow-Status', Data);
avp(T, Data, 'Flows') -> grouped_avp(T, 'Flows', Data);
avp(T, Data, 'Framed-IP-Address') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Framed-Ipv6-Prefix') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'G-S-U-Pool-Identifier') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'G-S-U-Pool-Reference') ->
    grouped_avp(T, 'G-S-U-Pool-Reference', Data);
avp(T, Data, 'GGSN-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'Granted-Service-Unit') ->
    grouped_avp(T, 'Granted-Service-Unit', Data);
avp(T, Data, 'Guaranteed-Bitrate-DL') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Guaranteed-Bitrate-UL') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'HeNB-Local-IP-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'Host-IP-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'IMSI-Unauthenticated-Flag') ->
    enumerated_avp(T, 'IMSI-Unauthenticated-Flag', Data);
avp(T, Data, 'IP-CAN-Type') ->
    enumerated_avp(T, 'IP-CAN-Type', Data);
avp(T, Data, 'Inband-Security-Id') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Incremental-Cost') ->
    grouped_avp(T, 'Incremental-Cost', Data);
avp(T, Data, 'Low-Priority-Indicator') ->
    enumerated_avp(T, 'Low-Priority-Indicator', Data);
avp(T, Data, 'Max-Requested-Bandwidth-DL') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Max-Requested-Bandwidth-UL') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Media-Component-Number') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Metering-Method') ->
    enumerated_avp(T, 'Metering-Method', Data);
avp(T, Data, 'Monitoring-Key') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Multi-Round-Time-Out') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Multiple-Services-Credit-Control') ->
    grouped_avp(T, 'Multiple-Services-Credit-Control',
		Data);
avp(T, Data, 'Multiple-Services-Indicator') ->
    enumerated_avp(T, 'Multiple-Services-Indicator', Data);
avp(T, Data, 'Mute-Notification') ->
    enumerated_avp(T, 'Mute-Notification', Data);
avp(T, Data, 'Network-Request-Support') ->
    enumerated_avp(T, 'Network-Request-Support', Data);
avp(T, Data, 'Next-Tariff') ->
    grouped_avp(T, 'Next-Tariff', Data);
avp(T, Data, 'Node-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'OMC-Id') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Offline') ->
    enumerated_avp(T, 'Offline', Data);
avp(T, Data, 'Online') ->
    enumerated_avp(T, 'Online', Data);
avp(T, Data, 'Origin-Host') ->
    diameter_types:'DiameterIdentity'(T, Data);
avp(T, Data, 'Origin-Realm') ->
    diameter_types:'DiameterIdentity'(T, Data);
avp(T, Data, 'Origin-State-Id') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'PCC-Rule-Status') ->
    enumerated_avp(T, 'PCC-Rule-Status', Data);
avp(T, Data, 'PDN-Connection-Charging-ID') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'PDN-Connection-ID') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'PDP-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'PDP-Address-Prefix-Length') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'PDP-Context-Type') ->
    enumerated_avp(T, 'PDP-Context-Type', Data);
avp(T, Data, 'PS-Append-Free-Format-Data') ->
    enumerated_avp(T, 'PS-Append-Free-Format-Data', Data);
avp(T, Data, 'PS-Free-Format-Data') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'PS-Furnish-Charging-Information') ->
    grouped_avp(T, 'PS-Furnish-Charging-Information', Data);
avp(T, Data, 'PS-Information') ->
    grouped_avp(T, 'PS-Information', Data);
avp(T, Data, 'PS-to-CS-Session-Continuity') ->
    enumerated_avp(T, 'PS-to-CS-Session-Continuity', Data);
avp(T, Data, 'Packet-Filter-Content') ->
    diameter_types:'IPFilterRule'(T, Data);
avp(T, Data, 'Packet-Filter-Identifier') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Packet-Filter-Information') ->
    grouped_avp(T, 'Packet-Filter-Information', Data);
avp(T, Data, 'Packet-Filter-Operation') ->
    enumerated_avp(T, 'Packet-Filter-Operation', Data);
avp(T, Data, 'Packet-Filter-Usage') ->
    enumerated_avp(T, 'Packet-Filter-Usage', Data);
avp(T, Data, 'Pre-emption-Capability') ->
    enumerated_avp(T, 'Pre-emption-Capability', Data);
avp(T, Data, 'Pre-emption-Vulnerability') ->
    enumerated_avp(T, 'Pre-emption-Vulnerability', Data);
avp(T, Data, 'Precedence') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Preferred-AoC-Currency') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data,
    'Primary-Charging-Collection-Function-Name') ->
    diameter_types:'DiameterURI'(T, Data);
avp(T, Data, 'Primary-Event-Charging-Function-Name') ->
    diameter_types:'DiameterURI'(T, Data);
avp(T, Data, 'Priority-Level') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Product-Name') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Proxy-Host') ->
    diameter_types:'DiameterIdentity'(T, Data);
avp(T, Data, 'Proxy-Info') ->
    grouped_avp(T, 'Proxy-Info', Data);
avp(T, Data, 'Proxy-State') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'QoS-Class-Identifier') ->
    enumerated_avp(T, 'QoS-Class-Identifier', Data);
avp(T, Data, 'QoS-Information') ->
    grouped_avp(T, 'QoS-Information', Data);
avp(T, Data, 'QoS-Negotiation') ->
    enumerated_avp(T, 'QoS-Negotiation', Data);
avp(T, Data, 'QoS-Upgrade') ->
    enumerated_avp(T, 'QoS-Upgrade', Data);
avp(T, Data, 'Quota-Consumption-Time') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Quota-Holding-Time') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'RAI') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'RAT-Type') ->
    enumerated_avp(T, 'RAT-Type', Data);
avp(T, Data, 'Rate-Element') ->
    grouped_avp(T, 'Rate-Element', Data);
avp(T, Data, 'Rating-Group') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Re-Auth-Request-Type') ->
    enumerated_avp(T, 'Re-Auth-Request-Type', Data);
avp(T, Data, 'Redirect-Address-Type') ->
    enumerated_avp(T, 'Redirect-Address-Type', Data);
avp(T, Data, 'Redirect-Host') ->
    diameter_types:'DiameterURI'(T, Data);
avp(T, Data, 'Redirect-Host-Usage') ->
    enumerated_avp(T, 'Redirect-Host-Usage', Data);
avp(T, Data, 'Redirect-Information') ->
    grouped_avp(T, 'Redirect-Information', Data);
avp(T, Data, 'Redirect-Max-Cache-Time') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Redirect-Server') ->
    grouped_avp(T, 'Redirect-Server', Data);
avp(T, Data, 'Redirect-Server-Address') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Redirect-Support') ->
    enumerated_avp(T, 'Redirect-Support', Data);
avp(T, Data, 'Refund-Information') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Reporting-Level') ->
    enumerated_avp(T, 'Reporting-Level', Data);
avp(T, Data, 'Reporting-Reason') ->
    enumerated_avp(T, 'Reporting-Reason', Data);
avp(T, Data, 'Requested-Action') ->
    enumerated_avp(T, 'Requested-Action', Data);
avp(T, Data, 'Requested-Service-Unit') ->
    grouped_avp(T, 'Requested-Service-Unit', Data);
avp(T, Data, 'Required-Access-Info') ->
    enumerated_avp(T, 'Required-Access-Info', Data);
avp(T, Data, 'Resource-Allocation-Notification') ->
    enumerated_avp(T, 'Resource-Allocation-Notification',
		   Data);
avp(T, Data, 'Restriction-Filter-Rule') ->
    diameter_types:'IPFilterRule'(T, Data);
avp(T, Data, 'Result-Code') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Revalidation-Time') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'Route-Record') ->
    diameter_types:'DiameterIdentity'(T, Data);
avp(T, Data, 'Routing-Filter') ->
    grouped_avp(T, 'Routing-Filter', Data);
avp(T, Data, 'Routing-IP-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'Routing-Rule-Definition') ->
    grouped_avp(T, 'Routing-Rule-Definition', Data);
avp(T, Data, 'Routing-Rule-Identifier') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Routing-Rule-Install') ->
    grouped_avp(T, 'Routing-Rule-Install', Data);
avp(T, Data, 'Routing-Rule-Remove') ->
    grouped_avp(T, 'Routing-Rule-Remove', Data);
avp(T, Data, 'Rule-Activation-Time') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'Rule-Deactivation-Time') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'Rule-Failure-Code') ->
    enumerated_avp(T, 'Rule-Failure-Code', Data);
avp(T, Data, 'SGSN-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'SGW-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'SGW-Change') ->
    enumerated_avp(T, 'SGW-Change', Data);
avp(T, Data, 'Scale-Factor') ->
    grouped_avp(T, 'Scale-Factor', Data);
avp(T, Data,
    'Secondary-Charging-Collection-Function-Name') ->
    diameter_types:'DiameterURI'(T, Data);
avp(T, Data,
    'Secondary-Event-Charging-Function-Name') ->
    diameter_types:'DiameterURI'(T, Data);
avp(T, Data, 'Security-Parameter-Index') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Service-Context-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Service-Identifier') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Service-Information') ->
    grouped_avp(T, 'Service-Information', Data);
avp(T, Data, 'Service-Specific-Data') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Service-Specific-Info') ->
    grouped_avp(T, 'Service-Specific-Info', Data);
avp(T, Data, 'Service-Specific-Type') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Serving-Node-Type') ->
    enumerated_avp(T, 'Serving-Node-Type', Data);
avp(T, Data, 'Session-Binding') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Session-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Session-Server-Failover') ->
    enumerated_avp(T, 'Session-Server-Failover', Data);
avp(T, Data, 'Session-Timeout') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Sponsor-Identity') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Subscription-Id') ->
    grouped_avp(T, 'Subscription-Id', Data);
avp(T, Data, 'Subscription-Id-Data') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Subscription-Id-Type') ->
    enumerated_avp(T, 'Subscription-Id-Type', Data);
avp(T, Data, 'Supported-Features') ->
    grouped_avp(T, 'Supported-Features', Data);
avp(T, Data, 'Supported-Vendor-Id') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'TDF-Application-Identifier') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'TDF-Application-Instance-Identifier') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'TDF-Destination-Host') ->
    diameter_types:'DiameterIdentity'(T, Data);
avp(T, Data, 'TDF-Destination-Realm') ->
    diameter_types:'DiameterIdentity'(T, Data);
avp(T, Data, 'TDF-IP-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'TDF-Information') ->
    grouped_avp(T, 'TDF-Information', Data);
avp(T, Data, 'TFT-Filter') ->
    diameter_types:'IPFilterRule'(T, Data);
avp(T, Data, 'TFT-Packet-Filter-Information') ->
    grouped_avp(T, 'TFT-Packet-Filter-Information', Data);
avp(T, Data, 'TWAN-Identifier') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Tariff-Change-Usage') ->
    enumerated_avp(T, 'Tariff-Change-Usage', Data);
avp(T, Data, 'Tariff-Information') ->
    grouped_avp(T, 'Tariff-Information', Data);
avp(T, Data, 'Tariff-Time-Change') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'Termination-Cause') ->
    enumerated_avp(T, 'Termination-Cause', Data);
avp(T, Data, 'Time-Quota-Mechanism') ->
    grouped_avp(T, 'Time-Quota-Mechanism', Data);
avp(T, Data, 'Time-Quota-Threshold') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Time-Quota-Type') ->
    enumerated_avp(T, 'Time-Quota-Type', Data);
avp(T, Data, 'ToS-Traffic-Class') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Trace-Collection-Entity') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'Trace-Data') ->
    grouped_avp(T, 'Trace-Data', Data);
avp(T, Data, 'Trace-Depth') ->
    enumerated_avp(T, 'Trace-Depth', Data);
avp(T, Data, 'Trace-Event-List') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Trace-Interface-List') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Trace-NE-Type-List') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Trace-Reference') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Trigger') ->
    grouped_avp(T, 'Trigger', Data);
avp(T, Data, 'Trigger-Type') ->
    enumerated_avp(T, 'Trigger-Type', Data);
avp(T, Data, 'Tunnel-Header-Filter') ->
    diameter_types:'IPFilterRule'(T, Data);
avp(T, Data, 'Tunnel-Header-Length') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Tunnel-Information') ->
    grouped_avp(T, 'Tunnel-Information', Data);
avp(T, Data, 'UDP-Source-Port') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'UE-Local-IP-Address') ->
    diameter_types:'Address'(T, Data);
avp(T, Data, 'Unit-Cost') ->
    grouped_avp(T, 'Unit-Cost', Data);
avp(T, Data, 'Unit-Quota-Threshold') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Unit-Value') ->
    grouped_avp(T, 'Unit-Value', Data);
avp(T, Data, 'Usage-Monitoring-Information') ->
    grouped_avp(T, 'Usage-Monitoring-Information', Data);
avp(T, Data, 'Usage-Monitoring-Level') ->
    enumerated_avp(T, 'Usage-Monitoring-Level', Data);
avp(T, Data, 'Usage-Monitoring-Report') ->
    enumerated_avp(T, 'Usage-Monitoring-Report', Data);
avp(T, Data, 'Usage-Monitoring-Support') ->
    enumerated_avp(T, 'Usage-Monitoring-Support', Data);
avp(T, Data, 'Used-Service-Unit') ->
    grouped_avp(T, 'Used-Service-Unit', Data);
avp(T, Data, 'User-CSG-Information') ->
    grouped_avp(T, 'User-CSG-Information', Data);
avp(T, Data, 'User-Equipment-Info') ->
    grouped_avp(T, 'User-Equipment-Info', Data);
avp(T, Data, 'User-Equipment-Info-Type') ->
    enumerated_avp(T, 'User-Equipment-Info-Type', Data);
avp(T, Data, 'User-Equipment-Info-Value') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'User-Location-Info-Time') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'User-Name') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Validity-Time') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Value-Digits') ->
    diameter_types:'Integer64'(T, Data);
avp(T, Data, 'Vendor-Id') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Vendor-Specific-Application-Id') ->
    grouped_avp(T, 'Vendor-Specific-Application-Id', Data);
avp(T, Data, 'Volume-Quota-Threshold') ->
    diameter_types:'Unsigned32'(T, Data);
avp(_, _, _) -> erlang:error(badarg).

enumerated_avp(decode, 'Disconnect-Cause',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Disconnect-Cause', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Disconnect-Cause',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Disconnect-Cause', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Disconnect-Cause',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Disconnect-Cause', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Redirect-Host-Usage',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Redirect-Host-Usage', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Redirect-Host-Usage',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Redirect-Host-Usage', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Redirect-Host-Usage',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Redirect-Host-Usage', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Redirect-Host-Usage',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Redirect-Host-Usage', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Redirect-Host-Usage',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Redirect-Host-Usage', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Redirect-Host-Usage',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Redirect-Host-Usage', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Redirect-Host-Usage',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Redirect-Host-Usage', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'Auth-Request-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Auth-Request-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Auth-Request-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Auth-Request-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Auth-Request-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Auth-Request-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Auth-Session-State',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Auth-Session-State', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Auth-Session-State',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Auth-Session-State', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Re-Auth-Request-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Re-Auth-Request-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Re-Auth-Request-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Re-Auth-Request-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Termination-Cause',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Termination-Cause', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Termination-Cause',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Termination-Cause', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Termination-Cause',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Termination-Cause', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Termination-Cause',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Termination-Cause', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Termination-Cause',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Termination-Cause', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Termination-Cause',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Termination-Cause', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'Termination-Cause',
	       <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'Termination-Cause', 7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'Termination-Cause',
	       <<0, 0, 0, 8>>) ->
    8;
enumerated_avp(encode, 'Termination-Cause', 8) ->
    <<0, 0, 0, 8>>;
enumerated_avp(decode, 'Session-Server-Failover',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Session-Server-Failover', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Session-Server-Failover',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Session-Server-Failover', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Session-Server-Failover',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Session-Server-Failover', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Session-Server-Failover',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Session-Server-Failover', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Accounting-Record-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Accounting-Record-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Accounting-Record-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Accounting-Record-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Accounting-Record-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Accounting-Record-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Accounting-Record-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Accounting-Record-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Accounting-Realtime-Required',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Accounting-Realtime-Required',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Accounting-Realtime-Required',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Accounting-Realtime-Required',
	       2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Accounting-Realtime-Required',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Accounting-Realtime-Required',
	       3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'CC-Request-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'CC-Request-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'CC-Request-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'CC-Request-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'CC-Request-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'CC-Request-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'CC-Request-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'CC-Request-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Subscription-Id-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Subscription-Id-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Subscription-Id-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Subscription-Id-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Subscription-Id-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Subscription-Id-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Subscription-Id-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Subscription-Id-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Subscription-Id-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Subscription-Id-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'IP-CAN-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'IP-CAN-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'IP-CAN-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'IP-CAN-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'IP-CAN-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'IP-CAN-Type', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'IP-CAN-Type', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 0, 0>>) -> 0;
enumerated_avp(encode, 'RAT-Type', 0) -> <<0, 0, 0, 0>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 0, 1>>) -> 1;
enumerated_avp(encode, 'RAT-Type', 1) -> <<0, 0, 0, 1>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 3, 232>>) ->
    1000;
enumerated_avp(encode, 'RAT-Type', 1000) ->
    <<0, 0, 3, 232>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 3, 233>>) ->
    1001;
enumerated_avp(encode, 'RAT-Type', 1001) ->
    <<0, 0, 3, 233>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 3, 234>>) ->
    1002;
enumerated_avp(encode, 'RAT-Type', 1002) ->
    <<0, 0, 3, 234>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 3, 235>>) ->
    1003;
enumerated_avp(encode, 'RAT-Type', 1003) ->
    <<0, 0, 3, 235>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 3, 236>>) ->
    1004;
enumerated_avp(encode, 'RAT-Type', 1004) ->
    <<0, 0, 3, 236>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 7, 208>>) ->
    2000;
enumerated_avp(encode, 'RAT-Type', 2000) ->
    <<0, 0, 7, 208>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 7, 209>>) ->
    2001;
enumerated_avp(encode, 'RAT-Type', 2001) ->
    <<0, 0, 7, 209>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 7, 210>>) ->
    2002;
enumerated_avp(encode, 'RAT-Type', 2002) ->
    <<0, 0, 7, 210>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 7, 211>>) ->
    2003;
enumerated_avp(encode, 'RAT-Type', 2003) ->
    <<0, 0, 7, 211>>;
enumerated_avp(decode, 'Packet-Filter-Usage',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Packet-Filter-Usage', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Packet-Filter-Usage',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Packet-Filter-Usage', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Flow-Direction',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Flow-Direction', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Flow-Direction',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Flow-Direction', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Flow-Direction',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Flow-Direction', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Flow-Direction',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Flow-Direction', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Flow-Status', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Flow-Status', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Flow-Status', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Flow-Status', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Flow-Status', <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Flow-Status', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Flow-Status', <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Flow-Status', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Flow-Status', <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Flow-Status', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'QoS-Class-Identifier', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'QoS-Class-Identifier', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'QoS-Class-Identifier', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'QoS-Class-Identifier', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'QoS-Class-Identifier', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'QoS-Class-Identifier', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
	       <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'QoS-Class-Identifier', 7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
	       <<0, 0, 0, 8>>) ->
    8;
enumerated_avp(encode, 'QoS-Class-Identifier', 8) ->
    <<0, 0, 0, 8>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
	       <<0, 0, 0, 9>>) ->
    9;
enumerated_avp(encode, 'QoS-Class-Identifier', 9) ->
    <<0, 0, 0, 9>>;
enumerated_avp(decode, 'Pre-emption-Capability',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Pre-emption-Capability', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Pre-emption-Capability',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Pre-emption-Capability', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Pre-emption-Vulnerability',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Pre-emption-Vulnerability',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Pre-emption-Vulnerability',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Pre-emption-Vulnerability',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'PS-to-CS-Session-Continuity',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'PS-to-CS-Session-Continuity',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Reporting-Level',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Reporting-Level', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Reporting-Level',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Reporting-Level', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Reporting-Level',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Reporting-Level', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Online', <<0, 0, 0, 0>>) -> 0;
enumerated_avp(encode, 'Online', 0) -> <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Online', <<0, 0, 0, 1>>) -> 1;
enumerated_avp(encode, 'Online', 1) -> <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Offline', <<0, 0, 0, 0>>) -> 0;
enumerated_avp(encode, 'Offline', 0) -> <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Offline', <<0, 0, 0, 1>>) -> 1;
enumerated_avp(encode, 'Offline', 1) -> <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Metering-Method',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Metering-Method', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Metering-Method',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Metering-Method', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Metering-Method',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Metering-Method', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Final-Unit-Action',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Final-Unit-Action', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Final-Unit-Action',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Final-Unit-Action', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Final-Unit-Action',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Final-Unit-Action', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Redirect-Support',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Redirect-Support', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Redirect-Support',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Redirect-Support', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Redirect-Address-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Redirect-Address-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Redirect-Address-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Redirect-Address-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Redirect-Address-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Redirect-Address-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Redirect-Address-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Redirect-Address-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Mute-Notification',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Mute-Notification', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'AF-Signalling-Protocol',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'AF-Signalling-Protocol', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'AF-Signalling-Protocol',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'AF-Signalling-Protocol', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Required-Access-Info',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Required-Access-Info', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Required-Access-Info',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Required-Access-Info', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode,
	       'Resource-Allocation-Notification', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode,
	       'Resource-Allocation-Notification', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Charging-Correlation-Indicator',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Charging-Correlation-Indicator',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Network-Request-Support',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Network-Request-Support', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Network-Request-Support',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Network-Request-Support', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Packet-Filter-Operation',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Packet-Filter-Operation', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Packet-Filter-Operation',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Packet-Filter-Operation', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Packet-Filter-Operation',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Packet-Filter-Operation', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Bearer-Operation',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Bearer-Operation', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Bearer-Operation',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Bearer-Operation', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Bearer-Operation',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Bearer-Operation', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'User-Equipment-Info-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'User-Equipment-Info-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'User-Equipment-Info-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'User-Equipment-Info-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'User-Equipment-Info-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'User-Equipment-Info-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'User-Equipment-Info-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'User-Equipment-Info-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'QoS-Negotiation',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'QoS-Negotiation', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'QoS-Negotiation',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'QoS-Negotiation', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'QoS-Upgrade', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'QoS-Upgrade', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'QoS-Upgrade', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'QoS-Upgrade', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'AN-GW-Status',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'AN-GW-Status', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Bearer-Usage',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Bearer-Usage', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Bearer-Usage',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Bearer-Usage', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'PCC-Rule-Status',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'PCC-Rule-Status', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'PCC-Rule-Status',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'PCC-Rule-Status', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'PCC-Rule-Status',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'PCC-Rule-Status', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Rule-Failure-Code', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Rule-Failure-Code', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Rule-Failure-Code', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Rule-Failure-Code', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Rule-Failure-Code', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Rule-Failure-Code', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'Rule-Failure-Code', 7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 8>>) ->
    8;
enumerated_avp(encode, 'Rule-Failure-Code', 8) ->
    <<0, 0, 0, 8>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 9>>) ->
    9;
enumerated_avp(encode, 'Rule-Failure-Code', 9) ->
    <<0, 0, 0, 9>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 10>>) ->
    10;
enumerated_avp(encode, 'Rule-Failure-Code', 10) ->
    <<0, 0, 0, 10>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 11>>) ->
    11;
enumerated_avp(encode, 'Rule-Failure-Code', 11) ->
    <<0, 0, 0, 11>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 12>>) ->
    12;
enumerated_avp(encode, 'Rule-Failure-Code', 12) ->
    <<0, 0, 0, 12>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 13>>) ->
    13;
enumerated_avp(encode, 'Rule-Failure-Code', 13) ->
    <<0, 0, 0, 13>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 14>>) ->
    14;
enumerated_avp(encode, 'Rule-Failure-Code', 14) ->
    <<0, 0, 0, 14>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 15>>) ->
    15;
enumerated_avp(encode, 'Rule-Failure-Code', 15) ->
    <<0, 0, 0, 15>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 16>>) ->
    16;
enumerated_avp(encode, 'Rule-Failure-Code', 16) ->
    <<0, 0, 0, 16>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 17>>) ->
    17;
enumerated_avp(encode, 'Rule-Failure-Code', 17) ->
    <<0, 0, 0, 17>>;
enumerated_avp(decode, 'Rule-Failure-Code',
	       <<0, 0, 0, 18>>) ->
    18;
enumerated_avp(encode, 'Rule-Failure-Code', 18) ->
    <<0, 0, 0, 18>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Event-Trigger', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Event-Trigger', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Event-Trigger', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Event-Trigger', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Event-Trigger', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Event-Trigger', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Event-Trigger', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'Event-Trigger', 7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 11>>) ->
    11;
enumerated_avp(encode, 'Event-Trigger', 11) ->
    <<0, 0, 0, 11>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 12>>) ->
    12;
enumerated_avp(encode, 'Event-Trigger', 12) ->
    <<0, 0, 0, 12>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 13>>) ->
    13;
enumerated_avp(encode, 'Event-Trigger', 13) ->
    <<0, 0, 0, 13>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 14>>) ->
    14;
enumerated_avp(encode, 'Event-Trigger', 14) ->
    <<0, 0, 0, 14>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 15>>) ->
    15;
enumerated_avp(encode, 'Event-Trigger', 15) ->
    <<0, 0, 0, 15>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 16>>) ->
    16;
enumerated_avp(encode, 'Event-Trigger', 16) ->
    <<0, 0, 0, 16>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 17>>) ->
    17;
enumerated_avp(encode, 'Event-Trigger', 17) ->
    <<0, 0, 0, 17>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 18>>) ->
    18;
enumerated_avp(encode, 'Event-Trigger', 18) ->
    <<0, 0, 0, 18>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 19>>) ->
    19;
enumerated_avp(encode, 'Event-Trigger', 19) ->
    <<0, 0, 0, 19>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 20>>) ->
    20;
enumerated_avp(encode, 'Event-Trigger', 20) ->
    <<0, 0, 0, 20>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 21>>) ->
    21;
enumerated_avp(encode, 'Event-Trigger', 21) ->
    <<0, 0, 0, 21>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 22>>) ->
    22;
enumerated_avp(encode, 'Event-Trigger', 22) ->
    <<0, 0, 0, 22>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 23>>) ->
    23;
enumerated_avp(encode, 'Event-Trigger', 23) ->
    <<0, 0, 0, 23>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 24>>) ->
    24;
enumerated_avp(encode, 'Event-Trigger', 24) ->
    <<0, 0, 0, 24>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 25>>) ->
    25;
enumerated_avp(encode, 'Event-Trigger', 25) ->
    <<0, 0, 0, 25>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 26>>) ->
    26;
enumerated_avp(encode, 'Event-Trigger', 26) ->
    <<0, 0, 0, 26>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 27>>) ->
    27;
enumerated_avp(encode, 'Event-Trigger', 27) ->
    <<0, 0, 0, 27>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 28>>) ->
    28;
enumerated_avp(encode, 'Event-Trigger', 28) ->
    <<0, 0, 0, 28>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 29>>) ->
    29;
enumerated_avp(encode, 'Event-Trigger', 29) ->
    <<0, 0, 0, 29>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 30>>) ->
    30;
enumerated_avp(encode, 'Event-Trigger', 30) ->
    <<0, 0, 0, 30>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 33>>) ->
    33;
enumerated_avp(encode, 'Event-Trigger', 33) ->
    <<0, 0, 0, 33>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 34>>) ->
    34;
enumerated_avp(encode, 'Event-Trigger', 34) ->
    <<0, 0, 0, 34>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 35>>) ->
    35;
enumerated_avp(encode, 'Event-Trigger', 35) ->
    <<0, 0, 0, 35>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 36>>) ->
    36;
enumerated_avp(encode, 'Event-Trigger', 36) ->
    <<0, 0, 0, 36>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 37>>) ->
    37;
enumerated_avp(encode, 'Event-Trigger', 37) ->
    <<0, 0, 0, 37>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 39>>) ->
    39;
enumerated_avp(encode, 'Event-Trigger', 39) ->
    <<0, 0, 0, 39>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 40>>) ->
    40;
enumerated_avp(encode, 'Event-Trigger', 40) ->
    <<0, 0, 0, 40>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 42>>) ->
    42;
enumerated_avp(encode, 'Event-Trigger', 42) ->
    <<0, 0, 0, 42>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 43>>) ->
    43;
enumerated_avp(encode, 'Event-Trigger', 43) ->
    <<0, 0, 0, 43>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 44>>) ->
    44;
enumerated_avp(encode, 'Event-Trigger', 44) ->
    <<0, 0, 0, 44>>;
enumerated_avp(decode, 'Event-Trigger',
	       <<0, 0, 0, 45>>) ->
    45;
enumerated_avp(encode, 'Event-Trigger', 45) ->
    <<0, 0, 0, 45>>;
enumerated_avp(decode, 'Trace-Depth', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Trace-Depth', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Trace-Depth', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Trace-Depth', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Trace-Depth', <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Trace-Depth', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Trace-Depth', <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Trace-Depth', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Trace-Depth', <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Trace-Depth', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Trace-Depth', <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Trace-Depth', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Tariff-Change-Usage',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Tariff-Change-Usage', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Tariff-Change-Usage',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Tariff-Change-Usage', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Tariff-Change-Usage',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Tariff-Change-Usage', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Usage-Monitoring-Level',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Usage-Monitoring-Level', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Usage-Monitoring-Level',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Usage-Monitoring-Level', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Usage-Monitoring-Level',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Usage-Monitoring-Level', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Usage-Monitoring-Report',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Usage-Monitoring-Report', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Usage-Monitoring-Support',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Usage-Monitoring-Support', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'CSG-Access-Mode',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'CSG-Access-Mode', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'CSG-Access-Mode',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'CSG-Access-Mode', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'CSG-Membership-Indication',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'CSG-Membership-Indication',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'CSG-Membership-Indication',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'CSG-Membership-Indication',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Bearer-Control-Mode',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Bearer-Control-Mode', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Bearer-Control-Mode',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Bearer-Control-Mode', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Bearer-Control-Mode',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Bearer-Control-Mode', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'CSG-Information-Reporting',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'CSG-Information-Reporting',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'CSG-Information-Reporting',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'CSG-Information-Reporting',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'CSG-Information-Reporting',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'CSG-Information-Reporting',
	       2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Requested-Action',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Requested-Action', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Requested-Action',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Requested-Action', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Requested-Action',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Requested-Action', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Requested-Action',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Requested-Action', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'AoC-Request-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'AoC-Request-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'AoC-Request-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'AoC-Request-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'AoC-Request-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'AoC-Request-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'AoC-Request-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'AoC-Request-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Multiple-Services-Indicator',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Multiple-Services-Indicator',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Multiple-Services-Indicator',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Multiple-Services-Indicator',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Reporting-Reason', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Reporting-Reason', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Reporting-Reason', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Reporting-Reason', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Reporting-Reason', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Reporting-Reason', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Reporting-Reason', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'Reporting-Reason', 7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'Reporting-Reason',
	       <<0, 0, 0, 8>>) ->
    8;
enumerated_avp(encode, 'Reporting-Reason', 8) ->
    <<0, 0, 0, 8>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Trigger-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Trigger-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Trigger-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Trigger-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Trigger-Type', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 10>>) ->
    10;
enumerated_avp(encode, 'Trigger-Type', 10) ->
    <<0, 0, 0, 10>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 11>>) ->
    11;
enumerated_avp(encode, 'Trigger-Type', 11) ->
    <<0, 0, 0, 11>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 12>>) ->
    12;
enumerated_avp(encode, 'Trigger-Type', 12) ->
    <<0, 0, 0, 12>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 13>>) ->
    13;
enumerated_avp(encode, 'Trigger-Type', 13) ->
    <<0, 0, 0, 13>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 14>>) ->
    14;
enumerated_avp(encode, 'Trigger-Type', 14) ->
    <<0, 0, 0, 14>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 15>>) ->
    15;
enumerated_avp(encode, 'Trigger-Type', 15) ->
    <<0, 0, 0, 15>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 16>>) ->
    16;
enumerated_avp(encode, 'Trigger-Type', 16) ->
    <<0, 0, 0, 16>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 17>>) ->
    17;
enumerated_avp(encode, 'Trigger-Type', 17) ->
    <<0, 0, 0, 17>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 18>>) ->
    18;
enumerated_avp(encode, 'Trigger-Type', 18) ->
    <<0, 0, 0, 18>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 19>>) ->
    19;
enumerated_avp(encode, 'Trigger-Type', 19) ->
    <<0, 0, 0, 19>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 20>>) ->
    20;
enumerated_avp(encode, 'Trigger-Type', 20) ->
    <<0, 0, 0, 20>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 21>>) ->
    21;
enumerated_avp(encode, 'Trigger-Type', 21) ->
    <<0, 0, 0, 21>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 22>>) ->
    22;
enumerated_avp(encode, 'Trigger-Type', 22) ->
    <<0, 0, 0, 22>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 23>>) ->
    23;
enumerated_avp(encode, 'Trigger-Type', 23) ->
    <<0, 0, 0, 23>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 30>>) ->
    30;
enumerated_avp(encode, 'Trigger-Type', 30) ->
    <<0, 0, 0, 30>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 31>>) ->
    31;
enumerated_avp(encode, 'Trigger-Type', 31) ->
    <<0, 0, 0, 31>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 32>>) ->
    32;
enumerated_avp(encode, 'Trigger-Type', 32) ->
    <<0, 0, 0, 32>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 33>>) ->
    33;
enumerated_avp(encode, 'Trigger-Type', 33) ->
    <<0, 0, 0, 33>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 34>>) ->
    34;
enumerated_avp(encode, 'Trigger-Type', 34) ->
    <<0, 0, 0, 34>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 35>>) ->
    35;
enumerated_avp(encode, 'Trigger-Type', 35) ->
    <<0, 0, 0, 35>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 36>>) ->
    36;
enumerated_avp(encode, 'Trigger-Type', 36) ->
    <<0, 0, 0, 36>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 40>>) ->
    40;
enumerated_avp(encode, 'Trigger-Type', 40) ->
    <<0, 0, 0, 40>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 50>>) ->
    50;
enumerated_avp(encode, 'Trigger-Type', 50) ->
    <<0, 0, 0, 50>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 51>>) ->
    51;
enumerated_avp(encode, 'Trigger-Type', 51) ->
    <<0, 0, 0, 51>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 52>>) ->
    52;
enumerated_avp(encode, 'Trigger-Type', 52) ->
    <<0, 0, 0, 52>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 60>>) ->
    60;
enumerated_avp(encode, 'Trigger-Type', 60) ->
    <<0, 0, 0, 60>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 61>>) ->
    61;
enumerated_avp(encode, 'Trigger-Type', 61) ->
    <<0, 0, 0, 61>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 70>>) ->
    70;
enumerated_avp(encode, 'Trigger-Type', 70) ->
    <<0, 0, 0, 70>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 71>>) ->
    71;
enumerated_avp(encode, 'Trigger-Type', 71) ->
    <<0, 0, 0, 71>>;
enumerated_avp(decode, 'Trigger-Type',
	       <<0, 0, 0, 72>>) ->
    72;
enumerated_avp(encode, 'Trigger-Type', 72) ->
    <<0, 0, 0, 72>>;
enumerated_avp(decode, 'CC-Unit-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'CC-Unit-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'CC-Unit-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'CC-Unit-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'CC-Unit-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'CC-Unit-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'CC-Unit-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'CC-Unit-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'CC-Unit-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'CC-Unit-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'CC-Unit-Type',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'CC-Unit-Type', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Charge-Reason-Code',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Charge-Reason-Code', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Charge-Reason-Code',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Charge-Reason-Code', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Charge-Reason-Code',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Charge-Reason-Code', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Charge-Reason-Code',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Charge-Reason-Code', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Charge-Reason-Code',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Charge-Reason-Code', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'AoC-Service-Obligatory-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'AoC-Service-Obligatory-Type',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'AoC-Service-Obligatory-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'AoC-Service-Obligatory-Type',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'AoC-Service-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'AoC-Service-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'AoC-Service-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'AoC-Service-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'AoC-Service-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'AoC-Service-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'AoC-Service-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'AoC-Service-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'AoC-Format', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'AoC-Format', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'AoC-Format', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'AoC-Format', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'AoC-Format', <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'AoC-Format', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, '3GPP-PDP-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, '3GPP-PDP-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, '3GPP-PDP-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, '3GPP-PDP-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, '3GPP-PDP-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, '3GPP-PDP-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Dynamic-Address-Flag',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Dynamic-Address-Flag', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Dynamic-Address-Flag',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Dynamic-Address-Flag', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Dynamic-Address-Flag-Extension',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Dynamic-Address-Flag-Extension',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Dynamic-Address-Flag-Extension',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Dynamic-Address-Flag-Extension',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Serving-Node-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Serving-Node-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Serving-Node-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Serving-Node-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Serving-Node-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Serving-Node-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Serving-Node-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Serving-Node-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Serving-Node-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Serving-Node-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Serving-Node-Type',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Serving-Node-Type', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Serving-Node-Type',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Serving-Node-Type', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'SGW-Change', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'SGW-Change', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'SGW-Change', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'SGW-Change', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'IMSI-Unauthenticated-Flag',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'IMSI-Unauthenticated-Flag',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'IMSI-Unauthenticated-Flag',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'IMSI-Unauthenticated-Flag',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Time-Quota-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Time-Quota-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Time-Quota-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Time-Quota-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'PS-Append-Free-Format-Data',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'PS-Append-Free-Format-Data',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'PS-Append-Free-Format-Data',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'PS-Append-Free-Format-Data',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Envelope-Reporting',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Envelope-Reporting', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Envelope-Reporting',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Envelope-Reporting', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Envelope-Reporting',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Envelope-Reporting', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Envelope-Reporting',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Envelope-Reporting', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Envelope-Reporting',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Envelope-Reporting', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'PDP-Context-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'PDP-Context-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'PDP-Context-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'PDP-Context-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Low-Priority-Indicator',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Low-Priority-Indicator', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Low-Priority-Indicator',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Low-Priority-Indicator', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode,
	       'Charging-Characteristics-Selection-Mode',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode,
	       'Charging-Characteristics-Selection-Mode', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode,
	       'Charging-Characteristics-Selection-Mode',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode,
	       'Charging-Characteristics-Selection-Mode', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode,
	       'Charging-Characteristics-Selection-Mode',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode,
	       'Charging-Characteristics-Selection-Mode', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode,
	       'Charging-Characteristics-Selection-Mode',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode,
	       'Charging-Characteristics-Selection-Mode', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode,
	       'Charging-Characteristics-Selection-Mode',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode,
	       'Charging-Characteristics-Selection-Mode', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode,
	       'Charging-Characteristics-Selection-Mode',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode,
	       'Charging-Characteristics-Selection-Mode', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'CC-Session-Failover',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'CC-Session-Failover', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'CC-Session-Failover',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'CC-Session-Failover', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('Proxy-Info') -> empty_group('Proxy-Info');
empty_value('Failed-AVP') -> empty_group('Failed-AVP');
empty_value('Experimental-Result') ->
    empty_group('Experimental-Result');
empty_value('Vendor-Specific-Application-Id') ->
    empty_group('Vendor-Specific-Application-Id');
empty_value('Subscription-Id') ->
    empty_group('Subscription-Id');
empty_value('Charging-Rule-Install') ->
    empty_group('Charging-Rule-Install');
empty_value('Charging-Rule-Definition') ->
    empty_group('Charging-Rule-Definition');
empty_value('Flow-Information') ->
    empty_group('Flow-Information');
empty_value('QoS-Information') ->
    empty_group('QoS-Information');
empty_value('Allocation-Retention-Priority') ->
    empty_group('Allocation-Retention-Priority');
empty_value('Flows') -> empty_group('Flows');
empty_value('Redirect-Information') ->
    empty_group('Redirect-Information');
empty_value('Supported-Features') ->
    empty_group('Supported-Features');
empty_value('TDF-Information') ->
    empty_group('TDF-Information');
empty_value('Packet-Filter-Information') ->
    empty_group('Packet-Filter-Information');
empty_value('User-Equipment-Info') ->
    empty_group('User-Equipment-Info');
empty_value('Default-EPS-Bearer-QoS') ->
    empty_group('Default-EPS-Bearer-QoS');
empty_value('TFT-Packet-Filter-Information') ->
    empty_group('TFT-Packet-Filter-Information');
empty_value('Charging-Rule-Report') ->
    empty_group('Charging-Rule-Report');
empty_value('Final-Unit-Indication') ->
    empty_group('Final-Unit-Indication');
empty_value('Redirect-Server') ->
    empty_group('Redirect-Server');
empty_value('Application-Detection-Information') ->
    empty_group('Application-Detection-Information');
empty_value('Event-Report-Indication') ->
    empty_group('Event-Report-Indication');
empty_value('Trace-Data') -> empty_group('Trace-Data');
empty_value('Access-Network-Charging-Identifier-Gx') ->
    empty_group('Access-Network-Charging-Identifier-Gx');
empty_value('CoA-Information') ->
    empty_group('CoA-Information');
empty_value('Tunnel-Information') ->
    empty_group('Tunnel-Information');
empty_value('Usage-Monitoring-Information') ->
    empty_group('Usage-Monitoring-Information');
empty_value('Granted-Service-Unit') ->
    empty_group('Granted-Service-Unit');
empty_value('CC-Money') -> empty_group('CC-Money');
empty_value('Used-Service-Unit') ->
    empty_group('Used-Service-Unit');
empty_value('Routing-Rule-Install') ->
    empty_group('Routing-Rule-Install');
empty_value('Routing-Rule-Definition') ->
    empty_group('Routing-Rule-Definition');
empty_value('Routing-Filter') ->
    empty_group('Routing-Filter');
empty_value('Routing-Rule-Remove') ->
    empty_group('Routing-Rule-Remove');
empty_value('Unit-Value') -> empty_group('Unit-Value');
empty_value('User-CSG-Information') ->
    empty_group('User-CSG-Information');
empty_value('Charging-Rule-Remove') ->
    empty_group('Charging-Rule-Remove');
empty_value('Charging-Information') ->
    empty_group('Charging-Information');
empty_value('Multiple-Services-Credit-Control') ->
    empty_group('Multiple-Services-Credit-Control');
empty_value('Requested-Service-Unit') ->
    empty_group('Requested-Service-Unit');
empty_value('G-S-U-Pool-Reference') ->
    empty_group('G-S-U-Pool-Reference');
empty_value('Trigger') -> empty_group('Trigger');
empty_value('Envelope') -> empty_group('Envelope');
empty_value('AF-Correlation-Information') ->
    empty_group('AF-Correlation-Information');
empty_value('Service-Specific-Info') ->
    empty_group('Service-Specific-Info');
empty_value('Service-Information') ->
    empty_group('Service-Information');
empty_value('AoC-Information') ->
    empty_group('AoC-Information');
empty_value('AoC-Cost-Information') ->
    empty_group('AoC-Cost-Information');
empty_value('Accumulated-Cost') ->
    empty_group('Accumulated-Cost');
empty_value('Incremental-Cost') ->
    empty_group('Incremental-Cost');
empty_value('Tariff-Information') ->
    empty_group('Tariff-Information');
empty_value('Current-Tariff') ->
    empty_group('Current-Tariff');
empty_value('Scale-Factor') ->
    empty_group('Scale-Factor');
empty_value('Rate-Element') ->
    empty_group('Rate-Element');
empty_value('Unit-Cost') -> empty_group('Unit-Cost');
empty_value('Next-Tariff') ->
    empty_group('Next-Tariff');
empty_value('AoC-Subscription-Information') ->
    empty_group('AoC-Subscription-Information');
empty_value('AoC-Service') ->
    empty_group('AoC-Service');
empty_value('PS-Information') ->
    empty_group('PS-Information');
empty_value('Time-Quota-Mechanism') ->
    empty_group('Time-Quota-Mechanism');
empty_value('PS-Furnish-Charging-Information') ->
    empty_group('PS-Furnish-Charging-Information');
empty_value('E2E-Sequence') ->
    empty_group('E2E-Sequence');
empty_value('Disconnect-Cause') -> <<0, 0, 0, 0>>;
empty_value('Redirect-Host-Usage') -> <<0, 0, 0, 0>>;
empty_value('Auth-Request-Type') -> <<0, 0, 0, 0>>;
empty_value('Auth-Session-State') -> <<0, 0, 0, 0>>;
empty_value('Re-Auth-Request-Type') -> <<0, 0, 0, 0>>;
empty_value('Termination-Cause') -> <<0, 0, 0, 0>>;
empty_value('Session-Server-Failover') ->
    <<0, 0, 0, 0>>;
empty_value('Accounting-Record-Type') -> <<0, 0, 0, 0>>;
empty_value('Accounting-Realtime-Required') ->
    <<0, 0, 0, 0>>;
empty_value('CC-Request-Type') -> <<0, 0, 0, 0>>;
empty_value('Subscription-Id-Type') -> <<0, 0, 0, 0>>;
empty_value('IP-CAN-Type') -> <<0, 0, 0, 0>>;
empty_value('RAT-Type') -> <<0, 0, 0, 0>>;
empty_value('Packet-Filter-Usage') -> <<0, 0, 0, 0>>;
empty_value('Flow-Direction') -> <<0, 0, 0, 0>>;
empty_value('Flow-Status') -> <<0, 0, 0, 0>>;
empty_value('QoS-Class-Identifier') -> <<0, 0, 0, 0>>;
empty_value('Pre-emption-Capability') -> <<0, 0, 0, 0>>;
empty_value('Pre-emption-Vulnerability') ->
    <<0, 0, 0, 0>>;
empty_value('PS-to-CS-Session-Continuity') ->
    <<0, 0, 0, 0>>;
empty_value('Reporting-Level') -> <<0, 0, 0, 0>>;
empty_value('Online') -> <<0, 0, 0, 0>>;
empty_value('Offline') -> <<0, 0, 0, 0>>;
empty_value('Metering-Method') -> <<0, 0, 0, 0>>;
empty_value('Final-Unit-Action') -> <<0, 0, 0, 0>>;
empty_value('Redirect-Support') -> <<0, 0, 0, 0>>;
empty_value('Redirect-Address-Type') -> <<0, 0, 0, 0>>;
empty_value('Mute-Notification') -> <<0, 0, 0, 0>>;
empty_value('AF-Signalling-Protocol') -> <<0, 0, 0, 0>>;
empty_value('Required-Access-Info') -> <<0, 0, 0, 0>>;
empty_value('Resource-Allocation-Notification') ->
    <<0, 0, 0, 0>>;
empty_value('Charging-Correlation-Indicator') ->
    <<0, 0, 0, 0>>;
empty_value('Network-Request-Support') ->
    <<0, 0, 0, 0>>;
empty_value('Packet-Filter-Operation') ->
    <<0, 0, 0, 0>>;
empty_value('Bearer-Operation') -> <<0, 0, 0, 0>>;
empty_value('User-Equipment-Info-Type') ->
    <<0, 0, 0, 0>>;
empty_value('QoS-Negotiation') -> <<0, 0, 0, 0>>;
empty_value('QoS-Upgrade') -> <<0, 0, 0, 0>>;
empty_value('AN-GW-Status') -> <<0, 0, 0, 0>>;
empty_value('Bearer-Usage') -> <<0, 0, 0, 0>>;
empty_value('PCC-Rule-Status') -> <<0, 0, 0, 0>>;
empty_value('Rule-Failure-Code') -> <<0, 0, 0, 0>>;
empty_value('Event-Trigger') -> <<0, 0, 0, 0>>;
empty_value('Trace-Depth') -> <<0, 0, 0, 0>>;
empty_value('Tariff-Change-Usage') -> <<0, 0, 0, 0>>;
empty_value('Usage-Monitoring-Level') -> <<0, 0, 0, 0>>;
empty_value('Usage-Monitoring-Report') ->
    <<0, 0, 0, 0>>;
empty_value('Usage-Monitoring-Support') ->
    <<0, 0, 0, 0>>;
empty_value('CSG-Access-Mode') -> <<0, 0, 0, 0>>;
empty_value('CSG-Membership-Indication') ->
    <<0, 0, 0, 0>>;
empty_value('Bearer-Control-Mode') -> <<0, 0, 0, 0>>;
empty_value('CSG-Information-Reporting') ->
    <<0, 0, 0, 0>>;
empty_value('Requested-Action') -> <<0, 0, 0, 0>>;
empty_value('AoC-Request-Type') -> <<0, 0, 0, 0>>;
empty_value('Multiple-Services-Indicator') ->
    <<0, 0, 0, 0>>;
empty_value('Reporting-Reason') -> <<0, 0, 0, 0>>;
empty_value('Trigger-Type') -> <<0, 0, 0, 0>>;
empty_value('CC-Unit-Type') -> <<0, 0, 0, 0>>;
empty_value('Charge-Reason-Code') -> <<0, 0, 0, 0>>;
empty_value('AoC-Service-Obligatory-Type') ->
    <<0, 0, 0, 0>>;
empty_value('AoC-Service-Type') -> <<0, 0, 0, 0>>;
empty_value('AoC-Format') -> <<0, 0, 0, 0>>;
empty_value('3GPP-PDP-Type') -> <<0, 0, 0, 0>>;
empty_value('Dynamic-Address-Flag') -> <<0, 0, 0, 0>>;
empty_value('Dynamic-Address-Flag-Extension') ->
    <<0, 0, 0, 0>>;
empty_value('Serving-Node-Type') -> <<0, 0, 0, 0>>;
empty_value('SGW-Change') -> <<0, 0, 0, 0>>;
empty_value('IMSI-Unauthenticated-Flag') ->
    <<0, 0, 0, 0>>;
empty_value('Time-Quota-Type') -> <<0, 0, 0, 0>>;
empty_value('PS-Append-Free-Format-Data') ->
    <<0, 0, 0, 0>>;
empty_value('Envelope-Reporting') -> <<0, 0, 0, 0>>;
empty_value('PDP-Context-Type') -> <<0, 0, 0, 0>>;
empty_value('Low-Priority-Indicator') -> <<0, 0, 0, 0>>;
empty_value('Charging-Characteristics-Selection-Mode') ->
    <<0, 0, 0, 0>>;
empty_value('CC-Session-Failover') -> <<0, 0, 0, 0>>;
empty_value(Name) -> empty(Name).

dict() ->
    [1,
     {avp_types,
      [{"3GPP-Charging-Characteristics", 13, "UTF8String",
	"MV"},
       {"3GPP-Charging-Id", 2, "OctetString", "MV"},
       {"3GPP-GGSN-Address", 7, "OctetString", "MV"},
       {"3GPP-GGSN-Ipv6-Address", 16, "OctetString", "MV"},
       {"3GPP-GGSN-MCC-MNC", 9, "UTF8String", "MV"},
       {"3GPP-IMSI-MCC-MNC", 8, "UTF8String", "MV"},
       {"3GPP-MS-TimeZone", 23, "OctetString", "MV"},
       {"3GPP-NSAPI", 10, "OctetString", "MV"},
       {"3GPP-PDP-Type", 3, "Enumerated", "MV"},
       {"3GPP-RAT-Type", 21, "OctetString", "MV"},
       {"3GPP-SGSN-Address", 6, "OctetString", "MV"},
       {"3GPP-SGSN-Ipv6-Address", 15, "OctetString", "MV"},
       {"3GPP-SGSN-MCC-MNC", 18, "UTF8String", "MV"},
       {"3GPP-Selection-Mode", 12, "UTF8String", "MV"},
       {"3GPP-Session-Stop-Indicator", 11, "OctetString",
	"MV"},
       {"3GPP-User-Location-Info", 22, "OctetString", "MV"},
       {"AF-Charging-Identifier", 505, "OctetString", "MV"},
       {"AF-Correlation-Information", 1276, "Grouped", "MV"},
       {"AF-Signalling-Protocol", 529, "Enumerated", "MV"},
       {"AN-GW-Address", 1050, "Address", "MV"},
       {"AN-GW-Status", 2811, "Enumerated", "MV"},
       {"APN-Aggregate-Max-Bitrate-DL", 1040, "Unsigned32",
	"MV"},
       {"APN-Aggregate-Max-Bitrate-UL", 1041, "Unsigned32",
	"MV"},
       {"Access-Network-Charging-Address", 501, "Address",
	"MV"},
       {"Access-Network-Charging-Identifier-Gx", 1022,
	"Grouped", "MV"},
       {"Access-Network-Charging-Identifier-Value", 503,
	"OctetString", "MV"},
       {"Accounting-Realtime-Required", 483, "Enumerated",
	"M"},
       {"Accounting-Record-Number", 485, "Unsigned32", "M"},
       {"Accounting-Record-Type", 480, "Enumerated", "M"},
       {"Accounting-Sub-Session-Id", 287, "Unsigned64", "M"},
       {"Acct-Application-Id", 259, "Unsigned32", "M"},
       {"Acct-Interim-Interval", 85, "Unsigned32", "M"},
       {"Acct-Multi-Session-Id", 50, "UTF8String", "M"},
       {"Acct-Session-Id", 44, "OctetString", "M"},
       {"Accumulated-Cost", 2052, "Grouped", "MV"},
       {"Allocation-Retention-Priority", 1034, "Grouped",
	"MV"},
       {"AoC-Cost-Information", 2053, "Grouped", "MV"},
       {"AoC-Format", 2310, "Enumerated", "MV"},
       {"AoC-Information", 2054, "Grouped", "MV"},
       {"AoC-Request-Type", 2055, "Enumerated", "MV"},
       {"AoC-Service", 2311, "Grouped", "MV"},
       {"AoC-Service-Obligatory-Type", 2312, "Enumerated",
	"MV"},
       {"AoC-Service-Type", 2313, "Enumerated", "MV"},
       {"AoC-Subscription-Information", 2314, "Grouped", "MV"},
       {"Application-Detection-Information", 1098, "Grouped",
	"MV"},
       {"Application-Service-Provider-Identity", 532,
	"UTF8String", "MV"},
       {"Auth-Application-Id", 258, "Unsigned32", "M"},
       {"Auth-Grace-Period", 276, "Unsigned32", "M"},
       {"Auth-Request-Type", 274, "Enumerated", "M"},
       {"Auth-Session-State", 277, "Enumerated", "M"},
       {"Authorization-Lifetime", 291, "Unsigned32", "M"},
       {"Base-Time-Interval", 1265, "Unsigned32", "MV"},
       {"Bearer-Control-Mode", 1023, "Enumerated", "MV"},
       {"Bearer-Identifier", 1020, "OctetString", "MV"},
       {"Bearer-Operation", 1021, "Enumerated", "MV"},
       {"Bearer-Usage", 1000, "Enumerated", "MV"},
       {"CC-Correlation-Id", 411, "OctetString", "M"},
       {"CC-Input-Octets", 412, "Unsigned64", "M"},
       {"CC-Money", 413, "Grouped", "M"},
       {"CC-Output-Octets", 414, "Unsigned64", "M"},
       {"CC-Request-Number", 415, "Unsigned32", "M"},
       {"CC-Request-Type", 416, "Enumerated", "M"},
       {"CC-Service-Specific-Units", 417, "Unsigned64", "M"},
       {"CC-Session-Failover", 418, "Enumerated", "M"},
       {"CC-Time", 420, "Unsigned32", "M"},
       {"CC-Total-Octets", 421, "Unsigned64", "M"},
       {"CC-Unit-Type", 454, "Enumerated", "M"},
       {"CG-Address", 846, "Address", "MV"},
       {"CSG-Access-Mode", 2317, "Enumerated", "MV"},
       {"CSG-Id", 1437, "Unsigned32", "MV"},
       {"CSG-Information-Reporting", 1071, "Enumerated", "MV"},
       {"CSG-Membership-Indication", 2318, "Enumerated", "MV"},
       {"Called-Station-Id", 30, "UTF8String", "M"},
       {"Change-Condition", 2037, "Integer32", "MV"},
       {"Charge-Reason-Code", 2118, "Enumerated", "MV"},
       {"Charging-Characteristics-Selection-Mode", 2066,
	"Enumerated", "MV"},
       {"Charging-Correlation-Indicator", 1073, "Enumerated",
	"MV"},
       {"Charging-Information", 618, "Grouped", "MV"},
       {"Charging-Rule-Base-Name", 1004, "UTF8String", "MV"},
       {"Charging-Rule-Definition", 1003, "Grouped", "MV"},
       {"Charging-Rule-Install", 1001, "Grouped", "MV"},
       {"Charging-Rule-Name", 1005, "OctetString", "MV"},
       {"Charging-Rule-Remove", 1002, "Grouped", "MV"},
       {"Charging-Rule-Report", 1018, "Grouped", "MV"},
       {"Class", 25, "OctetString", "M"},
       {"CoA-IP-Address", 1035, "Address", "MV"},
       {"CoA-Information", 1039, "Grouped", "MV"},
       {"Currency-Code", 425, "Unsigned32", "M"},
       {"Current-Tariff", 2056, "Grouped", "MV"},
       {"Default-EPS-Bearer-QoS", 1049, "Grouped", "MV"},
       {"Destination-Host", 293, "DiameterIdentity", "M"},
       {"Destination-Realm", 283, "DiameterIdentity", "M"},
       {"Disconnect-Cause", 273, "Enumerated", "M"},
       {"Dynamic-Address-Flag", 2051, "Enumerated", "MV"},
       {"Dynamic-Address-Flag-Extension", 2068, "Enumerated",
	"MV"},
       {"E2E-Sequence", 300, "Grouped", "M"},
       {"Envelope", 1266, "Grouped", "MV"},
       {"Envelope-End-Time", 1267, "Time", "MV"},
       {"Envelope-Reporting", 1268, "Enumerated", "MV"},
       {"Envelope-Start-Time", 1269, "Time", "MV"},
       {"Error-Message", 281, "UTF8String", []},
       {"Error-Reporting-Host", 294, "DiameterIdentity", []},
       {"Event-Charging-TimeStamp", 1258, "Time", "MV"},
       {"Event-Report-Indication", 1033, "Grouped", "MV"},
       {"Event-Timestamp", 55, "Time", "M"},
       {"Event-Trigger", 1006, "Enumerated", "MV"},
       {"Experimental-Result", 297, "Grouped", "M"},
       {"Experimental-Result-Code", 298, "Unsigned32", "M"},
       {"Exponent", 429, "Integer32", "M"},
       {"Failed-AVP", 279, "Grouped", "M"},
       {"Feature-List", 630, "Unsigned32", "MV"},
       {"Feature-List-ID", 629, "Unsigned32", "MV"},
       {"Filter-Id", 11, "UTF8String", "M"},
       {"Final-Unit-Action", 449, "Enumerated", "M"},
       {"Final-Unit-Indication", 430, "Grouped", "M"},
       {"Firmware-Revision", 267, "Unsigned32", []},
       {"Flow-Description", 507, "IPFilterRule", "MV"},
       {"Flow-Direction", 1080, "Enumerated", "MV"},
       {"Flow-Information", 1058, "Grouped", "MV"},
       {"Flow-Label", 1057, "OctetString", "MV"},
       {"Flow-Number", 509, "Unsigned32", "MV"},
       {"Flow-Status", 511, "Enumerated", "MV"},
       {"Flows", 510, "Grouped", "MV"},
       {"Framed-IP-Address", 8, "OctetString", "M"},
       {"Framed-Ipv6-Prefix", 97, "OctetString", "M"},
       {"G-S-U-Pool-Identifier", 453, "Unsigned32", "M"},
       {"G-S-U-Pool-Reference", 457, "Grouped", "M"},
       {"GGSN-Address", 847, "Address", "MV"},
       {"Granted-Service-Unit", 431, "Grouped", "M"},
       {"Guaranteed-Bitrate-DL", 1025, "Unsigned32", "MV"},
       {"Guaranteed-Bitrate-UL", 1026, "Unsigned32", "MV"},
       {"HeNB-Local-IP-Address", 2804, "Address", "MV"},
       {"Host-IP-Address", 257, "Address", "M"},
       {"IMSI-Unauthenticated-Flag", 2308, "Enumerated", "MV"},
       {"IP-CAN-Type", 1027, "Enumerated", "MV"},
       {"Inband-Security-Id", 299, "Unsigned32", "M"},
       {"Incremental-Cost", 2062, "Grouped", "MV"},
       {"Low-Priority-Indicator", 2602, "Enumerated", "MV"},
       {"Max-Requested-Bandwidth-DL", 515, "Unsigned32", "MV"},
       {"Max-Requested-Bandwidth-UL", 516, "Unsigned32", "MV"},
       {"Media-Component-Number", 518, "Unsigned32", "MV"},
       {"Metering-Method", 1007, "Enumerated", "MV"},
       {"Monitoring-Key", 1066, "OctetString", "MV"},
       {"Multi-Round-Time-Out", 272, "Unsigned32", "M"},
       {"Multiple-Services-Credit-Control", 456, "Grouped",
	"M"},
       {"Multiple-Services-Indicator", 455, "Enumerated", "M"},
       {"Mute-Notification", 2809, "Enumerated", "MV"},
       {"Network-Request-Support", 1024, "Enumerated", "MV"},
       {"Next-Tariff", 2057, "Grouped", "MV"},
       {"Node-Id", 2064, "UTF8String", "MV"},
       {"OMC-Id", 1466, "OctetString", "MV"},
       {"Offline", 1008, "Enumerated", "MV"},
       {"Online", 1009, "Enumerated", "MV"},
       {"Origin-Host", 264, "DiameterIdentity", "M"},
       {"Origin-Realm", 296, "DiameterIdentity", "M"},
       {"Origin-State-Id", 278, "Unsigned32", "M"},
       {"PCC-Rule-Status", 1019, "Enumerated", "MV"},
       {"PDN-Connection-Charging-ID", 2050, "Unsigned32",
	"MV"},
       {"PDN-Connection-ID", 1065, "OctetString", "MV"},
       {"PDP-Address", 1227, "Address", "MV"},
       {"PDP-Address-Prefix-Length", 2606, "Unsigned32", "MV"},
       {"PDP-Context-Type", 1247, "Enumerated", "MV"},
       {"PS-Append-Free-Format-Data", 867, "Enumerated", "MV"},
       {"PS-Free-Format-Data", 866, "OctetString", "MV"},
       {"PS-Furnish-Charging-Information", 865, "Grouped",
	"MV"},
       {"PS-Information", 874, "Grouped", "MV"},
       {"PS-to-CS-Session-Continuity", 1099, "Enumerated",
	"MV"},
       {"Packet-Filter-Content", 1059, "IPFilterRule", "MV"},
       {"Packet-Filter-Identifier", 1060, "OctetString", "MV"},
       {"Packet-Filter-Information", 1061, "Grouped", "MV"},
       {"Packet-Filter-Operation", 1062, "Enumerated", "MV"},
       {"Packet-Filter-Usage", 1072, "Enumerated", "MV"},
       {"Pre-emption-Capability", 1047, "Enumerated", "MV"},
       {"Pre-emption-Vulnerability", 1048, "Enumerated", "MV"},
       {"Precedence", 1010, "Unsigned32", "MV"},
       {"Preferred-AoC-Currency", 2315, "Unsigned32", "MV"},
       {"Primary-Charging-Collection-Function-Name", 621,
	"DiameterURI", "MV"},
       {"Primary-Event-Charging-Function-Name", 619,
	"DiameterURI", "MV"},
       {"Priority-Level", 1046, "Unsigned32", "MV"},
       {"Product-Name", 269, "UTF8String", []},
       {"Proxy-Host", 280, "DiameterIdentity", "M"},
       {"Proxy-Info", 284, "Grouped", "M"},
       {"Proxy-State", 33, "OctetString", "M"},
       {"QoS-Class-Identifier", 1028, "Enumerated", "MV"},
       {"QoS-Information", 1016, "Grouped", "MV"},
       {"QoS-Negotiation", 1029, "Enumerated", "MV"},
       {"QoS-Upgrade", 1030, "Enumerated", "MV"},
       {"Quota-Consumption-Time", 881, "Unsigned32", "MV"},
       {"Quota-Holding-Time", 871, "Unsigned32", "MV"},
       {"RAI", 909, "UTF8String", "MV"},
       {"RAT-Type", 1032, "Enumerated", "MV"},
       {"Rate-Element", 2058, "Grouped", "MV"},
       {"Rating-Group", 432, "Unsigned32", "M"},
       {"Re-Auth-Request-Type", 285, "Enumerated", "M"},
       {"Redirect-Address-Type", 433, "Enumerated", "M"},
       {"Redirect-Host", 292, "DiameterURI", "M"},
       {"Redirect-Host-Usage", 261, "Enumerated", "M"},
       {"Redirect-Information", 1085, "Grouped", "MV"},
       {"Redirect-Max-Cache-Time", 262, "Unsigned32", "M"},
       {"Redirect-Server", 434, "Grouped", "M"},
       {"Redirect-Server-Address", 435, "UTF8String", "M"},
       {"Redirect-Support", 1086, "Enumerated", "MV"},
       {"Refund-Information", 2022, "OctetString", "MV"},
       {"Reporting-Level", 1011, "Enumerated", "MV"},
       {"Reporting-Reason", 872, "Enumerated", "MV"},
       {"Requested-Action", 436, "Enumerated", "M"},
       {"Requested-Service-Unit", 437, "Grouped", "M"},
       {"Required-Access-Info", 536, "Enumerated", "MV"},
       {"Resource-Allocation-Notification", 1063, "Enumerated",
	"MV"},
       {"Restriction-Filter-Rule", 438, "IPFilterRule", "M"},
       {"Result-Code", 268, "Unsigned32", "M"},
       {"Revalidation-Time", 1042, "Time", "MV"},
       {"Route-Record", 282, "DiameterIdentity", "M"},
       {"Routing-Filter", 1078, "Grouped", "MV"},
       {"Routing-IP-Address", 1079, "Address", "MV"},
       {"Routing-Rule-Definition", 1076, "Grouped", "MV"},
       {"Routing-Rule-Identifier", 1077, "OctetString", "MV"},
       {"Routing-Rule-Install", 1081, "Grouped", "MV"},
       {"Routing-Rule-Remove", 1075, "Grouped", "MV"},
       {"Rule-Activation-Time", 1043, "Time", "MV"},
       {"Rule-Deactivation-Time", 1044, "Time", "MV"},
       {"Rule-Failure-Code", 1031, "Enumerated", "MV"},
       {"SGSN-Address", 1228, "Address", "MV"},
       {"SGW-Address", 2067, "Address", "MV"},
       {"SGW-Change", 2065, "Enumerated", "MV"},
       {"Scale-Factor", 2059, "Grouped", "MV"},
       {"Secondary-Charging-Collection-Function-Name", 622,
	"DiameterURI", "MV"},
       {"Secondary-Event-Charging-Function-Name", 620,
	"DiameterURI", "MV"},
       {"Security-Parameter-Index", 1056, "OctetString", "MV"},
       {"Service-Context-Id", 461, "UTF8String", "M"},
       {"Service-Identifier", 439, "Unsigned32", "M"},
       {"Service-Information", 873, "Grouped", "MV"},
       {"Service-Specific-Data", 863, "UTF8String", "MV"},
       {"Service-Specific-Info", 1249, "Grouped", "MV"},
       {"Service-Specific-Type", 1257, "Unsigned32", "MV"},
       {"Serving-Node-Type", 2047, "Enumerated", "MV"},
       {"Session-Binding", 270, "Unsigned32", "M"},
       {"Session-Id", 263, "UTF8String", "M"},
       {"Session-Server-Failover", 271, "Enumerated", "M"},
       {"Session-Timeout", 27, "Unsigned32", "M"},
       {"Sponsor-Identity", 531, "UTF8String", "MV"},
       {"Subscription-Id", 443, "Grouped", "M"},
       {"Subscription-Id-Data", 444, "UTF8String", "M"},
       {"Subscription-Id-Type", 450, "Enumerated", "M"},
       {"Supported-Features", 628, "Grouped", "MV"},
       {"Supported-Vendor-Id", 265, "Unsigned32", "M"},
       {"TDF-Application-Identifier", 1088, "OctetString",
	"MV"},
       {"TDF-Application-Instance-Identifier", 2802,
	"OctetString", "MV"},
       {"TDF-Destination-Host", 1089, "DiameterIdentity",
	"MV"},
       {"TDF-Destination-Realm", 1090, "DiameterIdentity",
	"MV"},
       {"TDF-IP-Address", 1091, "Address", "MV"},
       {"TDF-Information", 1087, "Grouped", "MV"},
       {"TFT-Filter", 1012, "IPFilterRule", "MV"},
       {"TFT-Packet-Filter-Information", 1013, "Grouped",
	"MV"},
       {"TWAN-Identifier", 29, "OctetString", "MV"},
       {"Tariff-Change-Usage", 452, "Enumerated", "M"},
       {"Tariff-Information", 2060, "Grouped", "MV"},
       {"Tariff-Time-Change", 451, "Time", "M"},
       {"Termination-Cause", 295, "Enumerated", "M"},
       {"Time-Quota-Mechanism", 1270, "Grouped", "MV"},
       {"Time-Quota-Threshold", 868, "Unsigned32", "MV"},
       {"Time-Quota-Type", 1271, "Enumerated", "MV"},
       {"ToS-Traffic-Class", 1014, "OctetString", "MV"},
       {"Trace-Collection-Entity", 1452, "Address", "MV"},
       {"Trace-Data", 1458, "Grouped", "MV"},
       {"Trace-Depth", 1462, "Enumerated", "MV"},
       {"Trace-Event-List", 1465, "OctetString", "MV"},
       {"Trace-Interface-List", 1464, "OctetString", "MV"},
       {"Trace-NE-Type-List", 1463, "OctetString", "MV"},
       {"Trace-Reference", 1459, "OctetString", "MV"},
       {"Trigger", 1264, "Grouped", "MV"},
       {"Trigger-Type", 870, "Enumerated", "MV"},
       {"Tunnel-Header-Filter", 1036, "IPFilterRule", "MV"},
       {"Tunnel-Header-Length", 1037, "Unsigned32", "MV"},
       {"Tunnel-Information", 1038, "Grouped", "MV"},
       {"UDP-Source-Port", 2806, "Unsigned32", "MV"},
       {"UE-Local-IP-Address", 2805, "Address", "MV"},
       {"Unit-Cost", 2061, "Grouped", "MV"},
       {"Unit-Quota-Threshold", 1226, "Unsigned32", "MV"},
       {"Unit-Value", 445, "Grouped", "M"},
       {"Usage-Monitoring-Information", 1067, "Grouped", "MV"},
       {"Usage-Monitoring-Level", 1068, "Enumerated", "MV"},
       {"Usage-Monitoring-Report", 1069, "Enumerated", "MV"},
       {"Usage-Monitoring-Support", 1070, "Enumerated", "MV"},
       {"Used-Service-Unit", 446, "Grouped", "M"},
       {"User-CSG-Information", 2319, "Grouped", "MV"},
       {"User-Equipment-Info", 458, "Grouped", "M"},
       {"User-Equipment-Info-Type", 459, "Enumerated", "M"},
       {"User-Equipment-Info-Value", 460, "OctetString", "M"},
       {"User-Location-Info-Time", 2812, "Time", "MV"},
       {"User-Name", 1, "UTF8String", "M"},
       {"Validity-Time", 448, "Unsigned32", "M"},
       {"Value-Digits", 447, "Integer64", "M"},
       {"Vendor-Id", 266, "Unsigned32", "M"},
       {"Vendor-Specific-Application-Id", 260, "Grouped", "M"},
       {"Volume-Quota-Threshold", 869, "Unsigned32", "MV"}]},
     {avp_vendor_id, []}, {codecs, []},
     {command_codes,
      [{271, "ACR", "ACA"}, {272, "CCR", "CCA"},
       {274, "ASR", "ASA"}, {275, "STR", "STA"},
       {280, "DWR", "DWA"}, {282, "DPR", "DPA"},
       {257, "CER", "CEA"}, {258, "RAR", "RAA"}]},
     {custom_types, []},
     {define,
      [{"Result-Code",
	[{"MULTI_ROUND_AUTH", 1001}, {"SUCCESS", 2001},
	 {"LIMITED_SUCCESS", 2002},
	 {"COMMAND_UNSUPPORTED", 3001},
	 {"UNABLE_TO_DELIVER", 3002}, {"REALM_NOT_SERVED", 3003},
	 {"TOO_BUSY", 3004}, {"LOOP_DETECTED", 3005},
	 {"REDIRECT_INDICATION", 3006},
	 {"APPLICATION_UNSUPPORTED", 3007},
	 {"INVALID_HDR_BITS", 3008}, {"INVALID_AVP_BITS", 3009},
	 {"UNKNOWN_PEER", 3010},
	 {"AUTHENTICATION_REJECTED", 4001},
	 {"OUT_OF_SPACE", 4002}, {"ELECTION_LOST", 4003},
	 {"DIAMETER_END_USER_SERVICE_DENIED", 4010},
	 {"DIAMETER_CREDIT_CONTROL_NOT_APPLICABLE", 4011},
	 {"DIAMETER_CREDIT_LIMIT_REACHED", 4012},
	 {"AVP_UNSUPPORTED", 5001}, {"UNKNOWN_SESSION_ID", 5002},
	 {"AUTHORIZATION_REJECTED", 5003},
	 {"INVALID_AVP_VALUE", 5004}, {"MISSING_AVP", 5005},
	 {"RESOURCES_EXCEEDED", 5006},
	 {"CONTRADICTING_AVPS", 5007}, {"AVP_NOT_ALLOWED", 5008},
	 {"AVP_OCCURS_TOO_MANY_TIMES", 5009},
	 {"NO_COMMON_APPLICATION", 5010},
	 {"UNSUPPORTED_VERSION", 5011},
	 {"UNABLE_TO_COMPLY", 5012},
	 {"INVALID_BIT_IN_HEADER", 5013},
	 {"INVALID_AVP_LENGTH", 5014},
	 {"INVALID_MESSAGE_LENGTH", 5015},
	 {"INVALID_AVP_BIT_COMBO", 5016},
	 {"NO_COMMON_SECURITY", 5017},
	 {"DIAMETER_MULTI_ROUND_AUTH", 1001},
	 {"DIAMETER_SUCCESS", 2001},
	 {"DIAMETER_LIMITED_SUCCESS", 2002},
	 {"DIAMETER_COMMAND_UNSUPPORTED", 3001},
	 {"DIAMETER_UNABLE_TO_DELIVER", 3002},
	 {"DIAMETER_REALM_NOT_SERVED", 3003},
	 {"DIAMETER_TOO_BUSY", 3004},
	 {"DIAMETER_LOOP_DETECTED", 3005},
	 {"DIAMETER_REDIRECT_INDICATION", 3006},
	 {"DIAMETER_APPLICATION_UNSUPPORTED", 3007},
	 {"DIAMETER_INVALID_HDR_BITS", 3008},
	 {"DIAMETER_INVALID_AVP_BITS", 3009},
	 {"DIAMETER_UNKNOWN_PEER", 3010},
	 {"DIAMETER_AUTHENTICATION_REJECTED", 4001},
	 {"DIAMETER_OUT_OF_SPACE", 4002},
	 {"DIAMETER_ELECTION_LOST", 4003},
	 {"DIAMETER_AVP_UNSUPPORTED", 5001},
	 {"DIAMETER_UNKNOWN_SESSION_ID", 5002},
	 {"DIAMETER_AUTHORIZATION_REJECTED", 5003},
	 {"DIAMETER_INVALID_AVP_VALUE", 5004},
	 {"DIAMETER_MISSING_AVP", 5005},
	 {"DIAMETER_RESOURCES_EXCEEDED", 5006},
	 {"DIAMETER_CONTRADICTING_AVPS", 5007},
	 {"DIAMETER_AVP_NOT_ALLOWED", 5008},
	 {"DIAMETER_AVP_OCCURS_TOO_MANY_TIMES", 5009},
	 {"DIAMETER_NO_COMMON_APPLICATION", 5010},
	 {"DIAMETER_UNSUPPORTED_VERSION", 5011},
	 {"DIAMETER_UNABLE_TO_COMPLY", 5012},
	 {"DIAMETER_INVALID_BIT_IN_HEADER", 5013},
	 {"DIAMETER_INVALID_AVP_LENGTH", 5014},
	 {"DIAMETER_INVALID_MESSAGE_LENGTH", 5015},
	 {"DIAMETER_INVALID_AVP_BIT_COMBO", 5016},
	 {"DIAMETER_NO_COMMON_SECURITY", 5017},
	 {"DIAMETER_USER_UNKNOWN", 5030},
	 {"DIAMETER_RATING_FAILED", 5031}]},
       {"Termination-Cause",
	[{"DIAMETER_LOGOUT", 1},
	 {"DIAMETER_SERVICE_NOT_PROVIDED", 2},
	 {"DIAMETER_BAD_ANSWER", 3},
	 {"DIAMETER_ADMINISTRATIVE", 4},
	 {"DIAMETER_LINK_BROKEN", 5},
	 {"DIAMETER_AUTH_EXPIRED", 6},
	 {"DIAMETER_USER_MOVED", 7},
	 {"DIAMETER_SESSION_TIMEOUT", 8}]}]},
     {enum,
      [{"Disconnect-Cause",
	[{"REBOOTING", 0}, {"BUSY", 1},
	 {"DO_NOT_WANT_TO_TALK_TO_YOU", 2}]},
       {"Redirect-Host-Usage",
	[{"DONT_CACHE", 0}, {"ALL_SESSION", 1},
	 {"ALL_REALM", 2}, {"REALM_AND_APPLICATION", 3},
	 {"ALL_APPLICATION", 4}, {"ALL_HOST", 5},
	 {"ALL_USER", 6}]},
       {"Auth-Request-Type",
	[{"AUTHENTICATE_ONLY", 1}, {"AUTHORIZE_ONLY", 2},
	 {"AUTHORIZE_AUTHENTICATE", 3}]},
       {"Auth-Session-State",
	[{"STATE_MAINTAINED", 0}, {"NO_STATE_MAINTAINED", 1}]},
       {"Re-Auth-Request-Type",
	[{"AUTHORIZE_ONLY", 0}, {"AUTHORIZE_AUTHENTICATE", 1}]},
       {"Termination-Cause",
	[{"LOGOUT", 1}, {"SERVICE_NOT_PROVIDED", 2},
	 {"BAD_ANSWER", 3}, {"ADMINISTRATIVE", 4},
	 {"LINK_BROKEN", 5}, {"AUTH_EXPIRED", 6},
	 {"USER_MOVED", 7}, {"SESSION_TIMEOUT", 8}]},
       {"Session-Server-Failover",
	[{"REFUSE_SERVICE", 0}, {"TRY_AGAIN", 1},
	 {"ALLOW_SERVICE", 2}, {"TRY_AGAIN_ALLOW_SERVICE", 3}]},
       {"Accounting-Record-Type",
	[{"EVENT_RECORD", 1}, {"START_RECORD", 2},
	 {"INTERIM_RECORD", 3}, {"STOP_RECORD", 4}]},
       {"Accounting-Realtime-Required",
	[{"DELIVER_AND_GRANT", 1}, {"GRANT_AND_STORE", 2},
	 {"GRANT_AND_LOSE", 3}]},
       {"CC-Request-Type",
	[{"INITIAL_REQUEST", 1}, {"UPDATE_REQUEST", 2},
	 {"TERMINATION_REQUEST", 3}, {"EVENT_REQUEST", 4}]},
       {"Subscription-Id-Type",
	[{"END_USER_E164", 0}, {"END_USER_IMSI", 1},
	 {"END_USER_SIP_URI", 2}, {"END_USER_NAI", 3},
	 {"END_USER_PRIVATE", 4}]},
       {"IP-CAN-Type",
	[{"3GPP-GPRS", 0}, {"DOCSIS", 1}, {"xDSL", 2},
	 {"WiMAX", 3}, {"3GPP2", 4}, {"3GPP-EPS", 5},
	 {"Non-3GPP-EPS", 6}]},
       {"RAT-Type",
	[{"WLAN", 0}, {"VIRTUAL", 1}, {"UTRAN", 1000},
	 {"GERAN", 1001}, {"GAN", 1002},
	 {"HSPA_EVOLUTION", 1003}, {"EUTRAN", 1004},
	 {"CDMA2000_1X", 2000}, {"HRPD", 2001}, {"UMB", 2002},
	 {"EHRPD", 2003}]},
       {"Packet-Filter-Usage",
	[{"UNKNOWN", 0}, {"SEND_TO_UE", 1}]},
       {"Flow-Direction",
	[{"UNSPECIFIED", 0}, {"DOWNLINK", 1}, {"UPLINK", 2},
	 {"BIDIRECTIONAL", 3}]},
       {"Flow-Status",
	[{"ENABLED-UPLINK", 0}, {"ENABLED-DOWNLINK", 1},
	 {"ENABLED", 2}, {"DISABLED", 3}, {"REMOVED", 4}]},
       {"QoS-Class-Identifier",
	[{"QCI_1", 1}, {"QCI_2", 2}, {"QCI_3", 3}, {"QCI_4", 4},
	 {"QCI_5", 5}, {"QCI_6", 6}, {"QCI_7", 7}, {"QCI_8", 8},
	 {"QCI_9", 9}]},
       {"Pre-emption-Capability",
	[{"PRE-EMPTION_CAPABILITY_ENABLED", 0},
	 {"PRE-EMPTION_CAPABILITY_DISABLED", 1}]},
       {"Pre-emption-Vulnerability",
	[{"PRE-EMPTION_VULNERABILITY_ENABLED", 0},
	 {"PRE-EMPTION_VULNERABILITY_DISABLED", 1}]},
       {"PS-to-CS-Session-Continuity",
	[{"VIDEO_PS2CS_CONT_CANDIDATE", 0}]},
       {"Reporting-Level",
	[{"SERVICE_IDENTIFIER_LEVEL", 0},
	 {"RATING_GROUP_LEVEL", 1},
	 {"SPONSORED_CONNECTIVITY_LEVEL", 2}]},
       {"Online",
	[{"DISABLE_ONLINE", 0}, {"ENABLE_ONLINE", 1}]},
       {"Offline",
	[{"DISABLE_OFFLINE", 0}, {"ENABLE_OFFLINE", 1}]},
       {"Metering-Method",
	[{"DURATION", 0}, {"VOLUME", 1},
	 {"DURATION_VOLUME", 2}]},
       {"Final-Unit-Action",
	[{"TERMINATE", 0}, {"REDIRECT", 1},
	 {"RESTRICT_ACCESS", 2}]},
       {"Redirect-Support",
	[{"REDIRECTION_DISABLED", 0},
	 {"REDIRECTION_ENABLED", 1}]},
       {"Redirect-Address-Type",
	[{"IPv4_Address", 0}, {"IPv6_Address", 1}, {"URL", 2},
	 {"SIP_URI", 3}]},
       {"Mute-Notification", [{"MUTE_REQUIRED", 0}]},
       {"AF-Signalling-Protocol",
	[{"NO_INFORMATION", 0}, {"SIP", 1}]},
       {"Required-Access-Info",
	[{"USER_LOCATION", 0}, {"MS_TIME_ZONE", 1}]},
       {"Resource-Allocation-Notification",
	[{"ENABLE_NOTIFICATION", 0}]},
       {"Charging-Correlation-Indicator",
	[{"CHARGING_IDENTIFIER_REQUIRED", 0}]},
       {"Network-Request-Support",
	[{"NETWORK_REQUEST_NOT_SUPPORTED", 0},
	 {"NETWORK_REQUEST_SUPPORTED", 1}]},
       {"Packet-Filter-Operation",
	[{"DELETION", 0}, {"ADDITION", 1},
	 {"MODIFICATION", 2}]},
       {"Bearer-Operation",
	[{"TERMINATION", 0}, {"ESTABLISHMENT", 1},
	 {"MODIFICATION", 2}]},
       {"User-Equipment-Info-Type",
	[{"IMEISV", 0}, {"MAC", 1}, {"EUI64", 2},
	 {"MODIFIED_EUI64", 3}]},
       {"QoS-Negotiation",
	[{"NO_QoS_NEGOTIATION", 0},
	 {"QoS_NEGOTIATION_SUPPORTED", 1}]},
       {"QoS-Upgrade",
	[{"QoS_UPGRADE_NOT_SUPPORTED", 0},
	 {"QoS_UPGRADE_SUPPORTED", 1}]},
       {"AN-GW-Status", [{"AN_GW_FAILED", 0}]},
       {"Bearer-Usage",
	[{"GENERAL", 0}, {"IMS_SIGNALLING", 1}]},
       {"PCC-Rule-Status",
	[{"ACTIVE", 0}, {"INACTIVE", 1},
	 {"TEMPORARILY_INACTIVE", 2}]},
       {"Rule-Failure-Code",
	[{"UNKNOWN_RULE_NAME", 1}, {"RATING_GROUP_ERROR", 2},
	 {"SERVICE_IDENTIFIER_ERROR", 3},
	 {"GW_PCEF_MALFUNCTION", 4}, {"RESOURCES_LIMITATION", 5},
	 {"MAX_NR_BEARERS_REACHED", 6}, {"UNKNOWN_BEARER_ID", 7},
	 {"MISSING_BEARER_ID", 8},
	 {"MISSING_FLOW_INFORMATION", 9},
	 {"RESOURCE_ALLOCATION_FAILURE", 10},
	 {"UNSUCCESSFUL_QOS_VALIDATION", 11},
	 {"INCORRECT_FLOW_INFORMATION", 12},
	 {"PS_TO_CS_HANDOVER", 13},
	 {"TDF_APPLICATION_IDENTIFIER_ERROR", 14},
	 {"NO_BEARER_BOUND", 15}, {"FILTER_RESTRICTIONS", 16},
	 {"AN_GW_FAILED", 17},
	 {"MISSING_REDIRECT_SERVER_ADDRESS", 18}]},
       {"Event-Trigger",
	[{"SGSN_CHANGE", 0}, {"QOS_CHANGE", 1},
	 {"RAT_CHANGE", 2}, {"TFT_CHANGE", 3},
	 {"PLMN_CHANGE", 4}, {"LOSS_OF_BEARER", 5},
	 {"RECOVERY_OF_BEARER", 6}, {"IP-CAN_CHANGE", 7},
	 {"QOS_CHANGE_EXCEEDING_AUTHORIZATION", 11},
	 {"RAI_CHANGE", 12}, {"USER_LOCATION_CHANGE", 13},
	 {"NO_EVENT_TRIGGERS", 14}, {"OUT_OF_CREDIT", 15},
	 {"REALLOCATION_OF_CREDIT", 16},
	 {"REVALIDATION_TIMEOUT", 17},
	 {"UE_IP_ADDRESS_ALLOCATE", 18},
	 {"UE_IP_ADDRESS_RELEASE", 19},
	 {"DEFAULT_EPS_BEARER_QOS_CHANGE", 20},
	 {"AN_GW_CHANGE", 21},
	 {"SUCCESSFUL_RESOURCE_ALLOCATION", 22},
	 {"RESOURCE_MODIFICATION_REQUEST", 23},
	 {"PGW_TRACE_CONTROL", 24}, {"UE_TIME_ZONE_CHANGE", 25},
	 {"TAI_CHANGE", 26}, {"ECGI_CHANGE", 27},
	 {"CHARGING_CORRELATION_EXCHANGE", 28},
	 {"APN-AMBR_MODIFICATION_FAILURE", 29},
	 {"USER_CSG_INFORMATION_CHANGE", 30},
	 {"USAGE_REPORT", 33},
	 {"DEFAULT-EPS-BEARER-QOS_MODIFICATION_FAILURE", 34},
	 {"USER_CSG_HYBRID_SUBSCRIBED_INFORMATION_CHANGE", 35},
	 {"USER_CSG_HYBRID_UNSUBSCRIBED_INFORMATION_CHANGE", 36},
	 {"ROUTING_RULE_CHANGE", 37}, {"APPLICATION_START", 39},
	 {"APPLICATION_STOP", 40}, {"CS_TO_PS_HANDOVER", 42},
	 {"UE_LOCAL_IP_ADDRESS_CHANGE", 43},
	 {"HE_NB_LOCAL_IP_ADDRESS_CHANGE", 44},
	 {"ACCESS_NETWORK_INFO_REPORT", 45}]},
       {"Trace-Depth",
	[{"MINIMUM", 0}, {"MEDIUM", 1}, {"MAXIMUM", 2},
	 {"MINIMUM_WITHOUT_VENDOR_SPECIFIC_EXTENSION", 3},
	 {"MEDIUM_WITHOUT_VENDOR_SPECIFIC_EXTENSION", 4},
	 {"MAXIMUM_WITHOUT_VENDOR_SPECIFIC_EXTENSION", 5}]},
       {"Tariff-Change-Usage",
	[{"UNIT_BEFORE_TARIFF_CHANGE", 0},
	 {"UNIT_AFTER_TARIFF_CHANGE", 1},
	 {"UNIT_INDETERMINATE", 2}]},
       {"Usage-Monitoring-Level",
	[{"SESSION_LEVEL", 0}, {"PCC_RULE_LEVEL", 1},
	 {"ADC_RULE_LEVEL", 2}]},
       {"Usage-Monitoring-Report",
	[{"USAGE_MONITORING_REPORT_REQUIRED", 0}]},
       {"Usage-Monitoring-Support",
	[{"USAGE_MONITORING_DISABLED", 0}]},
       {"CSG-Access-Mode",
	[{"CLOSED_MODE", 0}, {"HYBRID_MODE", 1}]},
       {"CSG-Membership-Indication",
	[{"NOT_CSG_MEMBER", 0}, {"CSG_MEMBER", 1}]},
       {"Bearer-Control-Mode",
	[{"UE_ONLY", 0}, {"RESERVED", 1}, {"UE_NW", 2}]},
       {"CSG-Information-Reporting",
	[{"CHANGE_CSG_CELL", 0},
	 {"CHANGE_CSG_SUBSCRIBED_HYBRID_CELL", 1},
	 {"CHANGE_CSG_UNSUBSCRIBED_HYBRID_CELL", 2}]},
       {"Requested-Action",
	[{"DIRECT_DEBITING", 0}, {"REFUND_ACCOUNT", 1},
	 {"CHECK_BALANCE", 2}, {"PRICE_ENQUIRY", 3}]},
       {"AoC-Request-Type",
	[{"AoC_NOT_REQUESTED", 0}, {"AoC_FULL", 1},
	 {"AoC_COST_ONLY", 2}, {"AoC_TARIFF_ONLY", 3}]},
       {"Multiple-Services-Indicator",
	[{"MULTIPLE_SERVICES_NOT_SUPPORTED", 0},
	 {"MULTIPLE_SERVICES_SUPPORTED", 1}]},
       {"Reporting-Reason",
	[{"THRESHOLD", 0}, {"QHT", 1}, {"FINAL", 2},
	 {"QUOTA_EXHAUSTED", 3}, {"VALIDITY_TIME", 4},
	 {"OTHER_QUOTA_TYPE", 5}, {"RATING_CONDITION_CHANGE", 6},
	 {"FORCED_REAUTHORISATION", 7}, {"POOL_EXHAUSTED", 8}]},
       {"Trigger-Type",
	[{"CHANGE_IN_SGSN_IP_ADDRESS", 1}, {"CHANGE_IN_QOS", 2},
	 {"CHANGE_IN_LOCATION", 3}, {"CHANGE_IN_RAT", 4},
	 {"CHANGE_IN_UE_TIMEZONE", 5},
	 {"CHANGEINQOS_TRAFFIC_CLASS", 10},
	 {"CHANGEINQOS_RELIABILITY_CLASS", 11},
	 {"CHANGEINQOS_DELAY_CLASS", 12},
	 {"CHANGEINQOS_PEAK_THROUGHPUT", 13},
	 {"CHANGEINQOS_PRECEDENCE_CLASS", 14},
	 {"CHANGEINQOS_MEAN_THROUGHPUT", 15},
	 {"CHANGEINQOS_MAXIMUM_BIT_RATE_FOR_UPLINK", 16},
	 {"CHANGEINQOS_MAXIMUM_BIT_RATE_FOR_DOWNLINK", 17},
	 {"CHANGEINQOS_RESIDUAL_BER", 18},
	 {"CHANGEINQOS_SDU_ERROR_RATIO", 19},
	 {"CHANGEINQOS_TRANSFER_DELAY", 20},
	 {"CHANGEINQOS_TRAFFIC_HANDLING_PRIORITY", 21},
	 {"CHANGEINQOS_GUARANTEED_BIT_RATE_FOR_UPLINK", 22},
	 {"CHANGEINQOS_GUARANTEED_BIT_RATE_FOR_DOWNLINK", 23},
	 {"CHANGEINLOCATION_MCC", 30},
	 {"CHANGEINLOCATION_MNC", 31},
	 {"CHANGEINLOCATION_RAC", 32},
	 {"CHANGEINLOCATION_LAC", 33},
	 {"CHANGEINLOCATION_CellId", 34},
	 {"CHANGEINLOCATION_TAC", 35},
	 {"CHANGEINLOCATION_ECGI", 36},
	 {"CHANGE_IN_MEDIA_COMPOSITION", 40},
	 {"CHANGE_IN_PARTICIPANTS_NMB", 50},
	 {"CHANGE_IN_THRSHLD_OF_PARTICIPANTS_NMB", 51},
	 {"CHANGE_IN_USER_PARTICIPATING_TYPE", 52},
	 {"CHANGE_IN_SERVICE_CONDITION", 60},
	 {"CHANGE_IN_SERVING_NODE", 61},
	 {"CHANGE_IN_USER_CSG_INFORMATION", 70},
	 {"CHANGE_IN_HYBRID_SUBSCRIBED_USER_CSG_INFORMATION",
	  71},
	 {"CHANGE_IN_HYBRID_UNSUBSCRIBED_USER_CSG_INFORM"
	  "ATION",
	  72}]},
       {"CC-Unit-Type",
	[{"TIME", 0}, {"MONEY", 1}, {"TOTAL-OCTETS", 2},
	 {"INPUT-OCTETS", 3}, {"OUTPUT-OCTETS", 4},
	 {"SERVICE-SPECIFIC-UNITS", 5}]},
       {"Charge-Reason-Code",
	[{"UNKNOWN", 0}, {"USAGE", 1},
	 {"COMMUNICATION-ATTEMPT-CHARGE", 2},
	 {"SETUP-CHARGE", 3}, {"ADD-ON-CHARGE", 4}]},
       {"AoC-Service-Obligatory-Type",
	[{"NON_BINDING", 0}, {"BINDING", 1}]},
       {"AoC-Service-Type",
	[{"NONE", 0}, {"AOC-S", 1}, {"AOC-D", 2},
	 {"AOC-E", 3}]},
       {"AoC-Format",
	[{"MONETARY", 0}, {"NON_MONETARY", 1}, {"CAI", 2}]},
       {"3GPP-PDP-Type",
	[{"IPv4", 0}, {"IPv6", 1}, {"IPv4v6", 2}]},
       {"Dynamic-Address-Flag",
	[{"Static", 0}, {"Dynamic", 1}]},
       {"Dynamic-Address-Flag-Extension",
	[{"Static", 0}, {"Dynamic", 1}]},
       {"Serving-Node-Type",
	[{"SGSN", 0}, {"PMIPSGW", 1}, {"GTPSGW", 2},
	 {"ePDG", 3}, {"hSGW", 4}, {"MME", 5}, {"TWAN", 6}]},
       {"SGW-Change",
	[{"ACR_Start_NOT_due_to_SGW_Change", 0},
	 {"ACR_Start_due_to_SGW_Change", 1}]},
       {"IMSI-Unauthenticated-Flag",
	[{"Authenticated", 0}, {"Unauthenticated", 1}]},
       {"Time-Quota-Type",
	[{"DISCRETE_TIME_PERIOD", 0},
	 {"CONTINUOUS_TIME_PERIOD", 1}]},
       {"PS-Append-Free-Format-Data",
	[{"Append", 0}, {"Overwrite", 1}]},
       {"Envelope-Reporting",
	[{"DO_NOT_REPORT_ENVELOPES", 0},
	 {"REPORT_ENVELOPES", 1},
	 {"REPORT_ENVELOPES_WITH_VOLUME", 2},
	 {"REPORT_ENVELOPES_WITH_EVENTS", 3},
	 {"REPORT_ENVELOPES_WITH_VOLUME_AND_EVENTS", 4}]},
       {"PDP-Context-Type",
	[{"PRIMARY", 0}, {"SECONDARY", 1}]},
       {"Low-Priority-Indicator", [{"NO", 0}, {"YES", 1}]},
       {"Charging-Characteristics-Selection-Mode",
	[{"Serving-Node-Supplied", 0},
	 {"Subscription-specific", 1}, {"APN-specific", 2},
	 {"Home-Default", 3}, {"Roaming-Default", 4},
	 {"Visiting-Default", 5}]},
       {"CC-Session-Failover",
	[{"FAILOVER_NOT_SUPPORTED", 0},
	 {"FAILOVER_SUPPORTED", 1}]}]},
     {grouped,
      [{"Proxy-Info", 284, [],
	[{"Proxy-Host"}, {"Proxy-State"}, {'*', ["AVP"]}]},
       {"Failed-AVP", 279, [], [{'*', {"AVP"}}]},
       {"Experimental-Result", 297, [],
	[{"Vendor-Id"}, {"Experimental-Result-Code"}]},
       {"Vendor-Specific-Application-Id", 260, [],
	[{'*', {"Vendor-Id"}}, ["Auth-Application-Id"],
	 ["Acct-Application-Id"]]},
       {"Subscription-Id", 443, [],
	[{"Subscription-Id-Type"}, {"Subscription-Id-Data"}]},
       {"Charging-Rule-Install", 1001, [],
	[{'*', ["Charging-Rule-Definition"]},
	 {'*', ["Charging-Rule-Name"]},
	 {'*', ["Charging-Rule-Base-Name"]},
	 ["Bearer-Identifier"], ["Rule-Activation-Time"],
	 ["Rule-Deactivation-Time"],
	 ["Resource-Allocation-Notification"],
	 ["Charging-Correlation-Indicator"]]},
       {"Charging-Rule-Definition", 1003, [],
	[["Charging-Rule-Name"], ["Service-Identifier"],
	 ["Rating-Group"], {'*', ["Flow-Information"]},
	 ["TDF-Application-Identifier"], ["Flow-Status"],
	 ["QoS-Information"], ["PS-to-CS-Session-Continuity"],
	 ["Reporting-Level"], ["Online"], ["Offline"],
	 ["Metering-Method"], ["Precedence"],
	 ["AF-Charging-Identifier"], {'*', ["Flows"]},
	 ["Monitoring-Key"], ["Redirect-Information"],
	 ["Mute-Notification"], ["AF-Signalling-Protocol"],
	 ["Sponsor-Identity"],
	 ["Application-Service-Provider-Identity"],
	 ["Required-Access-Info"], {'*', ["AVP"]}]},
       {"Flow-Information", 1058, [],
	[["Flow-Description"], ["Packet-Filter-Identifier"],
	 ["Packet-Filter-Usage"], ["ToS-Traffic-Class"],
	 ["Security-Parameter-Index"], ["Flow-Label"],
	 ["Flow-Direction"], {'*', ["AVP"]}]},
       {"QoS-Information", 1016, [],
	[["QoS-Class-Identifier"],
	 ["Max-Requested-Bandwidth-UL"],
	 ["Max-Requested-Bandwidth-DL"],
	 ["Guaranteed-Bitrate-UL"], ["Guaranteed-Bitrate-DL"],
	 ["Bearer-Identifier"],
	 ["Allocation-Retention-Priority"],
	 ["APN-Aggregate-Max-Bitrate-UL"],
	 ["APN-Aggregate-Max-Bitrate-DL"], {'*', ["AVP"]}]},
       {"Allocation-Retention-Priority", 1034, [],
	[["Priority-Level"], ["Pre-emption-Capability"],
	 ["Pre-emption-Vulnerability"]]},
       {"Flows", 510, [],
	[{"Media-Component-Number"}, {'*', ["Flow-Number"]},
	 ["Final-Unit-Action"]]},
       {"Redirect-Information", 1085, [],
	[["Redirect-Support"], ["Redirect-Address-Type"],
	 ["Redirect-Server-Address"], {'*', ["AVP"]}]},
       {"Supported-Features", 628, [],
	[["Vendor-Id"], ["Feature-List-ID"], ["Feature-List"],
	 {'*', ["AVP"]}]},
       {"TDF-Information", 1087, [],
	[["TDF-Destination-Realm"], ["TDF-Destination-Host"],
	 ["TDF-IP-Address"]]},
       {"Packet-Filter-Information", 1061, [],
	[["Packet-Filter-Identifier"], ["Precedence"],
	 ["Packet-Filter-Content"], ["ToS-Traffic-Class"],
	 ["Security-Parameter-Index"], ["Flow-Label"],
	 ["Flow-Direction"], {'*', ["AVP"]}]},
       {"User-Equipment-Info", 458, [],
	[{"User-Equipment-Info-Type"},
	 {"User-Equipment-Info-Value"}]},
       {"Default-EPS-Bearer-QoS", 1049, [],
	[["QoS-Class-Identifier"],
	 ["Allocation-Retention-Priority"], {'*', ["AVP"]}]},
       {"TFT-Packet-Filter-Information", 1013, [],
	[["Precedence"], ["TFT-Filter"], ["ToS-Traffic-Class"],
	 ["Security-Parameter-Index"], ["Flow-Label"],
	 ["Flow-Direction"], {'*', ["AVP"]}]},
       {"Charging-Rule-Report", 1018, [],
	[{'*', ["Charging-Rule-Name"]},
	 {'*', ["Charging-Rule-Base-Name"]},
	 ["Bearer-Identifier"], ["PCC-Rule-Status"],
	 ["Rule-Failure-Code"], ["Final-Unit-Indication"],
	 {'*', ["AVP"]}]},
       {"Final-Unit-Indication", 430, [],
	[["Final-Unit-Action"],
	 {'*', ["Restriction-Filter-Rule"]},
	 {'*', ["Filter-Id"]}, ["Redirect-Server"]]},
       {"Redirect-Server", 434, [],
	[{"Redirect-Address-Type"},
	 {"Redirect-Server-Address"}]},
       {"Application-Detection-Information", 1098, [],
	[["TDF-Application-Identifier"],
	 ["TDF-Application-Instance-Identifier"],
	 {'*', ["Flow-Information"]}, {'*', ["AVP"]}]},
       {"Event-Report-Indication", 1033, [],
	[{'*', ["Event-Trigger"]}, ["User-CSG-Information"],
	 ["IP-CAN-Type"], {{0, 2}, ["AN-GW-Address"]},
	 ["3GPP-SGSN-Address"], ["3GPP-SGSN-Ipv6-Address"],
	 ["3GPP-SGSN-MCC-MNC"], ["Framed-IP-Address"],
	 ["RAT-Type"], ["RAI"], ["3GPP-User-Location-Info"],
	 ["Trace-Data"], ["Trace-Reference"],
	 ["Routing-IP-Address"], ["UE-Local-IP-Address"],
	 ["HeNB-Local-IP-Address"], ["UDP-Source-Port"],
	 {'*', ["AVP"]}]},
       {"Trace-Data", 1458, [],
	[{"Trace-Reference"}, {"Trace-Depth"},
	 {"Trace-NE-Type-List"}, ["Trace-Interface-List"],
	 ["Trace-Event-List"], ["OMC-Id"],
	 ["Trace-Collection-Entity"], {'*', ["AVP"]}]},
       {"Access-Network-Charging-Identifier-Gx", 1022, [],
	[{"Access-Network-Charging-Identifier-Value"},
	 {'*', ["Charging-Rule-Base-Name"]},
	 {'*', ["Charging-Rule-Name"]}]},
       {"CoA-Information", 1039, [],
	[{"Tunnel-Information"}, {"CoA-IP-Address"},
	 {'*', ["AVP"]}]},
       {"Tunnel-Information", 1038, [],
	[["Tunnel-Header-Length"], ["Tunnel-Header-Filter"],
	 {'*', ["AVP"]}]},
       {"Usage-Monitoring-Information", 1067, [],
	[["Monitoring-Key"], {{0, 2}, ["Granted-Service-Unit"]},
	 {{0, 2}, ["Used-Service-Unit"]},
	 ["Usage-Monitoring-Level"], ["Usage-Monitoring-Report"],
	 ["Usage-Monitoring-Support"], {'*', ["AVP"]}]},
       {"Granted-Service-Unit", 431, [],
	[["Tariff-Time-Change"], ["CC-Time"], ["CC-Money"],
	 ["CC-Total-Octets"], ["CC-Input-Octets"],
	 ["CC-Output-Octets"], ["CC-Service-Specific-Units"],
	 {'*', ["AVP"]}]},
       {"CC-Money", 413, [],
	[{"Unit-Value"}, ["Currency-Code"]]},
       {"Used-Service-Unit", 446, [],
	[["Reporting-Reason"], ["Tariff-Change-Usage"],
	 ["CC-Time"], ["CC-Total-Octets"], ["CC-Input-Octets"],
	 ["CC-Output-Octets"], ["CC-Service-Specific-Units"],
	 {'*', ["Event-Charging-TimeStamp"]}, {'*', ["AVP"]}]},
       {"Routing-Rule-Install", 1081, [],
	[{'*', ["Routing-Rule-Definition"]}, {'*', ["AVP"]}]},
       {"Routing-Rule-Definition", 1076, [],
	[{"Routing-Rule-Identifier"}, {'*', ["Routing-Filter"]},
	 ["Precedence"], ["Routing-IP-Address"],
	 {'*', ["AVP"]}]},
       {"Routing-Filter", 1078, [],
	[{"Flow-Description"}, {"Flow-Direction"},
	 ["ToS-Traffic-Class"], ["Security-Parameter-Index"],
	 ["Flow-Label"], {'*', ["AVP"]}]},
       {"Routing-Rule-Remove", 1075, [],
	[{'*', ["Routing-Rule-Identifier"]}, {'*', ["AVP"]}]},
       {"Unit-Value", 445, [],
	[{"Value-Digits"}, ["Exponent"]]},
       {"User-CSG-Information", 2319, [],
	[{"CSG-Id"}, {"CSG-Access-Mode"},
	 ["CSG-Membership-Indication"]]},
       {"Charging-Rule-Remove", 1002, [],
	[{'*', ["Charging-Rule-Name"]},
	 {'*', ["Charging-Rule-Base-Name"]},
	 {'*', ["Required-Access-Info"]}, {'*', ["AVP"]}]},
       {"Charging-Information", 618, [],
	[["Primary-Event-Charging-Function-Name"],
	 ["Secondary-Event-Charging-Function-Name"],
	 ["Primary-Charging-Collection-Function-Name"],
	 ["Secondary-Charging-Collection-Function-Name"],
	 {'*', ["AVP"]}]},
       {"Multiple-Services-Credit-Control", 456, [],
	[["Granted-Service-Unit"], ["Requested-Service-Unit"],
	 {'*', ["Used-Service-Unit"]},
	 {'*', ["Service-Identifier"]}, ["Rating-Group"],
	 {'*', ["G-S-U-Pool-Reference"]}, ["Validity-Time"],
	 ["Result-Code"], ["Final-Unit-Indication"],
	 ["Time-Quota-Threshold"], ["Volume-Quota-Threshold"],
	 ["Unit-Quota-Threshold"], ["Quota-Holding-Time"],
	 ["Quota-Consumption-Time"], {'*', ["Reporting-Reason"]},
	 ["Trigger"], ["PS-Furnish-Charging-Information"],
	 ["Refund-Information"],
	 {'*', ["AF-Correlation-Information"]},
	 {'*', ["Envelope"]}, ["Envelope-Reporting"],
	 ["Time-Quota-Mechanism"],
	 {'*', ["Service-Specific-Info"]}, ["QoS-Information"]]},
       {"Requested-Service-Unit", 437, [],
	[["CC-Time"], ["CC-Total-Octets"], ["CC-Input-Octets"],
	 ["CC-Output-Octets"], ["CC-Service-Specific-Units"],
	 {'*', ["AVP"]}]},
       {"G-S-U-Pool-Reference", 457, [],
	[["G-S-U-Pool-Identifier"], ["CC-Unit-Type"],
	 ["Unit-Value"]]},
       {"Trigger", 1264, [], [{'*', ["Trigger-Type"]}]},
       {"Envelope", 1266, [],
	[["Envelope-Start-Time"], ["Envelope-End-Time"],
	 ["CC-Total-Octets"], ["CC-Input-Octets"],
	 ["CC-Output-Octets"], ["CC-Service-Specific-Units"],
	 {'*', ["AVP"]}]},
       {"AF-Correlation-Information", 1276, [],
	[["AF-Charging-Identifier"], {'*', ["Flows"]}]},
       {"Service-Specific-Info", 1249, [],
	[["Service-Specific-Data"], ["Service-Specific-Type"]]},
       {"Service-Information", 873, [],
	[{'*', ["Subscription-Id"]}, ["AoC-Information"],
	 ["PS-Information"]]},
       {"AoC-Information", 2054, [],
	[["AoC-Cost-Information"], ["Tariff-Information"],
	 ["AoC-Subscription-Information"]]},
       {"AoC-Cost-Information", 2053, [],
	[["Accumulated-Cost"], {'*', ["Incremental-Cost"]},
	 ["Currency-Code"]]},
       {"Accumulated-Cost", 2052, [],
	[{"Value-Digits"}, ["Exponent"]]},
       {"Incremental-Cost", 2062, [],
	[{"Value-Digits"}, ["Exponent"]]},
       {"Tariff-Information", 2060, [],
	[{"Current-Tariff"}, ["Tariff-Time-Change"],
	 ["Next-Tariff"]]},
       {"Current-Tariff", 2056, [],
	[["Currency-Code"], ["Scale-Factor"],
	 {'*', ["Rate-Element"]}]},
       {"Scale-Factor", 2059, [],
	[{"Value-Digits"}, ["Exponent"]]},
       {"Rate-Element", 2058, [],
	[{"CC-Unit-Type"}, ["Charge-Reason-Code"],
	 ["Unit-Value"], ["Unit-Cost"],
	 ["Unit-Quota-Threshold"]]},
       {"Unit-Cost", 2061, [],
	[{"Value-Digits"}, ["Exponent"]]},
       {"Next-Tariff", 2057, [],
	[["Currency-Code"], ["Scale-Factor"],
	 {'*', ["Rate-Element"]}]},
       {"AoC-Subscription-Information", 2314, [],
	[{'*', ["AoC-Service"]}, ["AoC-Format"],
	 ["Preferred-AoC-Currency"]]},
       {"AoC-Service", 2311, [],
	[["AoC-Service-Obligatory-Type"],
	 ["AoC-Service-Type"]]},
       {"PS-Information", 874, [],
	[["3GPP-Charging-Id"], ["PDN-Connection-Charging-ID"],
	 ["Node-Id"], ["3GPP-PDP-Type"], {'*', ["PDP-Address"]},
	 ["PDP-Address-Prefix-Length"], ["Dynamic-Address-Flag"],
	 ["Dynamic-Address-Flag-Extension"], ["QoS-Information"],
	 {'*', ["SGSN-Address"]}, {'*', ["GGSN-Address"]},
	 {'*', ["SGW-Address"]}, ["CG-Address"],
	 ["Serving-Node-Type"], ["SGW-Change"],
	 ["3GPP-IMSI-MCC-MNC"], ["IMSI-Unauthenticated-Flag"],
	 ["3GPP-GGSN-MCC-MNC"], ["3GPP-NSAPI"],
	 ["Called-Station-Id"], ["3GPP-Session-Stop-Indicator"],
	 ["3GPP-Selection-Mode"],
	 ["3GPP-Charging-Characteristics"],
	 ["Charging-Characteristics-Selection-Mode"],
	 ["3GPP-SGSN-MCC-MNC"], ["3GPP-MS-TimeZone"],
	 ["Charging-Rule-Base-Name"],
	 ["3GPP-User-Location-Info"],
	 ["User-Location-Info-Time"], ["User-CSG-Information"],
	 ["3GPP-RAT-Type"], ["PS-Furnish-Charging-Information"],
	 ["PDP-Context-Type"], ["User-Equipment-Info"],
	 ["Change-Condition"], ["Low-Priority-Indicator"]]},
       {"Time-Quota-Mechanism", 1270, [],
	[{"Time-Quota-Type"}, {"Base-Time-Interval"}]},
       {"PS-Furnish-Charging-Information", 865, [],
	[{"3GPP-Charging-Id"}, {"PS-Free-Format-Data"},
	 ["PS-Append-Free-Format-Data"]]},
       {"E2E-Sequence", 300, [], [{{2, '*'}, {"AVP"}}]}]},
     {id, 4}, {import_avps, []}, {import_enums, []},
     {import_groups, []}, {inherits, []},
     {messages,
      [{"CER", 257, ['REQ'], [],
	[{"Origin-Host"}, {"Origin-Realm"},
	 {'*', {"Host-IP-Address"}}, {"Vendor-Id"},
	 {"Product-Name"}, ["Origin-State-Id"],
	 {'*', ["Supported-Vendor-Id"]},
	 {'*', ["Auth-Application-Id"]},
	 {'*', ["Inband-Security-Id"]},
	 {'*', ["Acct-Application-Id"]},
	 {'*', ["Vendor-Specific-Application-Id"]},
	 ["Firmware-Revision"], {'*', ["AVP"]}]},
       {"CEA", 257, [], [],
	[{"Result-Code"}, {"Origin-Host"}, {"Origin-Realm"},
	 {'*', {"Host-IP-Address"}}, {"Vendor-Id"},
	 {"Product-Name"}, ["Origin-State-Id"],
	 ["Error-Message"], {'*', ["Failed-AVP"]},
	 {'*', ["Supported-Vendor-Id"]},
	 {'*', ["Auth-Application-Id"]},
	 {'*', ["Inband-Security-Id"]},
	 {'*', ["Acct-Application-Id"]},
	 {'*', ["Vendor-Specific-Application-Id"]},
	 ["Firmware-Revision"], {'*', ["AVP"]}]},
       {"DPR", 282, ['REQ'], [],
	[{"Origin-Host"}, {"Origin-Realm"},
	 {"Disconnect-Cause"}]},
       {"DPA", 282, [], [],
	[{"Result-Code"}, {"Origin-Host"}, {"Origin-Realm"},
	 ["Error-Message"], {'*', ["Failed-AVP"]}]},
       {"DWR", 280, ['REQ'], [],
	[{"Origin-Host"}, {"Origin-Realm"},
	 ["Origin-State-Id"]]},
       {"DWA", 280, [], [],
	[{"Result-Code"}, {"Origin-Host"}, {"Origin-Realm"},
	 ["Error-Message"], {'*', ["Failed-AVP"]},
	 ["Origin-State-Id"]]},
       {"answer-message", -1, ['ERR', 'PXY'], [],
	[{{0, 1}, {{"Session-Id"}}}, {"Origin-Host"},
	 {"Origin-Realm"}, {"Result-Code"}, ["Origin-State-Id"],
	 ["Error-Reporting-Host"], ["Proxy-Info"],
	 {'*', ["AVP"]}]},
       {"CCR", 272, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Origin-Host"}, {"Origin-Realm"},
	 {"Destination-Realm"}, {"Service-Context-Id"},
	 {"CC-Request-Type"}, {"CC-Request-Number"},
	 ["Destination-Host"], ["User-Name"],
	 ["Origin-State-Id"], ["Event-Timestamp"],
	 {'*', ["Subscription-Id"]}, ["Termination-Cause"],
	 ["Requested-Action"], ["AoC-Request-Type"],
	 ["Multiple-Services-Indicator"],
	 {'*', ["Multiple-Services-Credit-Control"]},
	 ["CC-Correlation-Id"], ["User-Equipment-Info"],
	 ["Service-Information"], {'*', ["AVP"]}]},
       {"CCA", 272, ['PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Origin-Host"}, {"Origin-Realm"}, ["Result-Code"],
	 ["CC-Request-Type"], ["CC-Request-Number"],
	 ["CC-Session-Failover"], ["Supported-Features"],
	 {'*', ["Multiple-Services-Credit-Control"]},
	 {'*', ["Redirect-Host"]}, ["Redirect-Host-Usage"],
	 ["Redirect-Max-Cache-Time"], {'*', ["Proxy-Info"]},
	 {'*', ["Route-Record"]}, {'*', ["Failed-AVP"]},
	 ["Service-Information"], {'*', ["AVP"]}]},
       {"RAR", 258, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Origin-Host"}, {"Origin-Realm"},
	 {"Destination-Realm"}, {"Destination-Host"},
	 {"Auth-Application-Id"}, {"Re-Auth-Request-Type"},
	 ["User-Name"], ["Origin-State-Id"],
	 {'*', ["Proxy-Info"]}, {'*', ["Route-Record"]},
	 {'*', ["AVP"]}]},
       {"RAA", 258, ['PXY'], [],
	[{{"Session-Id"}}, {"Result-Code"}, {"Origin-Host"},
	 {"Origin-Realm"}, ["User-Name"], ["Origin-State-Id"],
	 ["Error-Message"], ["Error-Reporting-Host"],
	 {'*', ["Failed-AVP"]}, {'*', ["Redirect-Host"]},
	 ["Redirect-Host-Usage"], ["Redirect-Max-Cache-Time"],
	 {'*', ["Proxy-Info"]}, {'*', ["AVP"]}]},
       {"STR", 275, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Origin-Host"}, {"Origin-Realm"},
	 {"Destination-Realm"}, {"Auth-Application-Id"},
	 {"Termination-Cause"}, ["User-Name"],
	 ["Destination-Host"], {'*', ["Class"]},
	 ["Origin-State-Id"], {'*', ["Proxy-Info"]},
	 {'*', ["Route-Record"]}, {'*', ["AVP"]}]},
       {"STA", 275, ['PXY'], [],
	[{{"Session-Id"}}, {"Result-Code"}, {"Origin-Host"},
	 {"Origin-Realm"}, ["User-Name"], {'*', ["Class"]},
	 ["Error-Message"], ["Error-Reporting-Host"],
	 {'*', ["Failed-AVP"]}, ["Origin-State-Id"],
	 {'*', ["Redirect-Host"]}, ["Redirect-Host-Usage"],
	 ["Redirect-Max-Cache-Time"], {'*', ["Proxy-Info"]},
	 {'*', ["AVP"]}]},
       {"ASR", 274, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Origin-Host"}, {"Origin-Realm"},
	 {"Destination-Realm"}, {"Destination-Host"},
	 {"Auth-Application-Id"}, ["User-Name"],
	 ["Origin-State-Id"], {'*', ["Proxy-Info"]},
	 {'*', ["Route-Record"]}, {'*', ["AVP"]}]},
       {"ASA", 274, ['PXY'], [],
	[{{"Session-Id"}}, {"Result-Code"}, {"Origin-Host"},
	 {"Origin-Realm"}, ["User-Name"], ["Origin-State-Id"],
	 ["Error-Message"], ["Error-Reporting-Host"],
	 {'*', ["Failed-AVP"]}, {'*', ["Redirect-Host"]},
	 ["Redirect-Host-Usage"], ["Redirect-Max-Cache-Time"],
	 {'*', ["Proxy-Info"]}, {'*', ["AVP"]}]},
       {"ACR", 271, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Origin-Host"}, {"Origin-Realm"},
	 {"Destination-Realm"}, {"Accounting-Record-Type"},
	 {"Accounting-Record-Number"}, ["Acct-Application-Id"],
	 ["Vendor-Specific-Application-Id"], ["User-Name"],
	 ["Accounting-Sub-Session-Id"], ["Acct-Session-Id"],
	 ["Acct-Multi-Session-Id"], ["Acct-Interim-Interval"],
	 ["Accounting-Realtime-Required"], ["Origin-State-Id"],
	 ["Event-Timestamp"], {'*', ["Proxy-Info"]},
	 {'*', ["Route-Record"]}, {'*', ["AVP"]}]},
       {"ACA", 271, ['PXY'], [],
	[{{"Session-Id"}}, {"Result-Code"}, {"Origin-Host"},
	 {"Origin-Realm"}, {"Accounting-Record-Type"},
	 {"Accounting-Record-Number"}, ["Acct-Application-Id"],
	 ["Vendor-Specific-Application-Id"], ["User-Name"],
	 ["Accounting-Sub-Session-Id"], ["Acct-Session-Id"],
	 ["Acct-Multi-Session-Id"], ["Error-Reporting-Host"],
	 ["Acct-Interim-Interval"],
	 ["Accounting-Realtime-Required"], ["Origin-State-Id"],
	 ["Event-Timestamp"], {'*', ["Proxy-Info"]},
	 {'*', ["AVP"]}]}]},
     {name, "diameter_gen_base_gy"},
     {prefix, "diameter_base_gy"},
     {vendor, {10415, "IETF"}}].


