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

-hrl_name('diameter_gen_base_gy.hrl').


%%% -------------------------------------------------------
%%% Message records:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% ENUM Macros:
%%% -------------------------------------------------------

-define('DIAMETER_BASE_GY_DISCONNECT-CAUSE_REBOOTING', 0).
-define('DIAMETER_BASE_GY_DISCONNECT-CAUSE_BUSY', 1).
-define('DIAMETER_BASE_GY_DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU', 2).
-define('DIAMETER_BASE_GY_REDIRECT-HOST-USAGE_DONT_CACHE', 0).
-define('DIAMETER_BASE_GY_REDIRECT-HOST-USAGE_ALL_SESSION', 1).
-define('DIAMETER_BASE_GY_REDIRECT-HOST-USAGE_ALL_REALM', 2).
-define('DIAMETER_BASE_GY_REDIRECT-HOST-USAGE_REALM_AND_APPLICATION', 3).
-define('DIAMETER_BASE_GY_REDIRECT-HOST-USAGE_ALL_APPLICATION', 4).
-define('DIAMETER_BASE_GY_REDIRECT-HOST-USAGE_ALL_HOST', 5).
-define('DIAMETER_BASE_GY_REDIRECT-HOST-USAGE_ALL_USER', 6).
-define('DIAMETER_BASE_GY_AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY', 1).
-define('DIAMETER_BASE_GY_AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 2).
-define('DIAMETER_BASE_GY_AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 3).
-define('DIAMETER_BASE_GY_AUTH-SESSION-STATE_STATE_MAINTAINED', 0).
-define('DIAMETER_BASE_GY_AUTH-SESSION-STATE_NO_STATE_MAINTAINED', 1).
-define('DIAMETER_BASE_GY_RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 0).
-define('DIAMETER_BASE_GY_RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 1).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_LOGOUT', 1).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_SERVICE_NOT_PROVIDED', 2).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_BAD_ANSWER', 3).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_ADMINISTRATIVE', 4).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_LINK_BROKEN', 5).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_AUTH_EXPIRED', 6).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_USER_MOVED', 7).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_SESSION_TIMEOUT', 8).
-define('DIAMETER_BASE_GY_SESSION-SERVER-FAILOVER_REFUSE_SERVICE', 0).
-define('DIAMETER_BASE_GY_SESSION-SERVER-FAILOVER_TRY_AGAIN', 1).
-define('DIAMETER_BASE_GY_SESSION-SERVER-FAILOVER_ALLOW_SERVICE', 2).
-define('DIAMETER_BASE_GY_SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE', 3).
-define('DIAMETER_BASE_GY_ACCOUNTING-RECORD-TYPE_EVENT_RECORD', 1).
-define('DIAMETER_BASE_GY_ACCOUNTING-RECORD-TYPE_START_RECORD', 2).
-define('DIAMETER_BASE_GY_ACCOUNTING-RECORD-TYPE_INTERIM_RECORD', 3).
-define('DIAMETER_BASE_GY_ACCOUNTING-RECORD-TYPE_STOP_RECORD', 4).
-define('DIAMETER_BASE_GY_ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT', 1).
-define('DIAMETER_BASE_GY_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE', 2).
-define('DIAMETER_BASE_GY_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE', 3).
-define('DIAMETER_BASE_GY_CC-REQUEST-TYPE_INITIAL_REQUEST', 1).
-define('DIAMETER_BASE_GY_CC-REQUEST-TYPE_UPDATE_REQUEST', 2).
-define('DIAMETER_BASE_GY_CC-REQUEST-TYPE_TERMINATION_REQUEST', 3).
-define('DIAMETER_BASE_GY_CC-REQUEST-TYPE_EVENT_REQUEST', 4).
-define('DIAMETER_BASE_GY_SUBSCRIPTION-ID-TYPE_END_USER_E164', 0).
-define('DIAMETER_BASE_GY_SUBSCRIPTION-ID-TYPE_END_USER_IMSI', 1).
-define('DIAMETER_BASE_GY_SUBSCRIPTION-ID-TYPE_END_USER_SIP_URI', 2).
-define('DIAMETER_BASE_GY_SUBSCRIPTION-ID-TYPE_END_USER_NAI', 3).
-define('DIAMETER_BASE_GY_SUBSCRIPTION-ID-TYPE_END_USER_PRIVATE', 4).
-define('DIAMETER_BASE_GY_IP-CAN-TYPE_3GPP-GPRS', 0).
-define('DIAMETER_BASE_GY_IP-CAN-TYPE_DOCSIS', 1).
-define('DIAMETER_BASE_GY_IP-CAN-TYPE_XDSL', 2).
-define('DIAMETER_BASE_GY_IP-CAN-TYPE_WIMAX', 3).
-define('DIAMETER_BASE_GY_IP-CAN-TYPE_3GPP2', 4).
-define('DIAMETER_BASE_GY_IP-CAN-TYPE_3GPP-EPS', 5).
-define('DIAMETER_BASE_GY_IP-CAN-TYPE_NON-3GPP-EPS', 6).
-define('DIAMETER_BASE_GY_RAT-TYPE_WLAN', 0).
-define('DIAMETER_BASE_GY_RAT-TYPE_VIRTUAL', 1).
-define('DIAMETER_BASE_GY_RAT-TYPE_UTRAN', 1000).
-define('DIAMETER_BASE_GY_RAT-TYPE_GERAN', 1001).
-define('DIAMETER_BASE_GY_RAT-TYPE_GAN', 1002).
-define('DIAMETER_BASE_GY_RAT-TYPE_HSPA_EVOLUTION', 1003).
-define('DIAMETER_BASE_GY_RAT-TYPE_EUTRAN', 1004).
-define('DIAMETER_BASE_GY_RAT-TYPE_CDMA2000_1X', 2000).
-define('DIAMETER_BASE_GY_RAT-TYPE_HRPD', 2001).
-define('DIAMETER_BASE_GY_RAT-TYPE_UMB', 2002).
-define('DIAMETER_BASE_GY_RAT-TYPE_EHRPD', 2003).
-define('DIAMETER_BASE_GY_PACKET-FILTER-USAGE_UNKNOWN', 0).
-define('DIAMETER_BASE_GY_PACKET-FILTER-USAGE_SEND_TO_UE', 1).
-define('DIAMETER_BASE_GY_FLOW-DIRECTION_UNSPECIFIED', 0).
-define('DIAMETER_BASE_GY_FLOW-DIRECTION_DOWNLINK', 1).
-define('DIAMETER_BASE_GY_FLOW-DIRECTION_UPLINK', 2).
-define('DIAMETER_BASE_GY_FLOW-DIRECTION_BIDIRECTIONAL', 3).
-define('DIAMETER_BASE_GY_FLOW-STATUS_ENABLED-UPLINK', 0).
-define('DIAMETER_BASE_GY_FLOW-STATUS_ENABLED-DOWNLINK', 1).
-define('DIAMETER_BASE_GY_FLOW-STATUS_ENABLED', 2).
-define('DIAMETER_BASE_GY_FLOW-STATUS_DISABLED', 3).
-define('DIAMETER_BASE_GY_FLOW-STATUS_REMOVED', 4).
-define('DIAMETER_BASE_GY_QOS-CLASS-IDENTIFIER_QCI_1', 1).
-define('DIAMETER_BASE_GY_QOS-CLASS-IDENTIFIER_QCI_2', 2).
-define('DIAMETER_BASE_GY_QOS-CLASS-IDENTIFIER_QCI_3', 3).
-define('DIAMETER_BASE_GY_QOS-CLASS-IDENTIFIER_QCI_4', 4).
-define('DIAMETER_BASE_GY_QOS-CLASS-IDENTIFIER_QCI_5', 5).
-define('DIAMETER_BASE_GY_QOS-CLASS-IDENTIFIER_QCI_6', 6).
-define('DIAMETER_BASE_GY_QOS-CLASS-IDENTIFIER_QCI_7', 7).
-define('DIAMETER_BASE_GY_QOS-CLASS-IDENTIFIER_QCI_8', 8).
-define('DIAMETER_BASE_GY_QOS-CLASS-IDENTIFIER_QCI_9', 9).
-define('DIAMETER_BASE_GY_PRE-EMPTION-CAPABILITY_PRE-EMPTION_CAPABILITY_ENABLED', 0).
-define('DIAMETER_BASE_GY_PRE-EMPTION-CAPABILITY_PRE-EMPTION_CAPABILITY_DISABLED', 1).
-define('DIAMETER_BASE_GY_PRE-EMPTION-VULNERABILITY_PRE-EMPTION_VULNERABILITY_ENABLED', 0).
-define('DIAMETER_BASE_GY_PRE-EMPTION-VULNERABILITY_PRE-EMPTION_VULNERABILITY_DISABLED', 1).
-define('DIAMETER_BASE_GY_PS-TO-CS-SESSION-CONTINUITY_VIDEO_PS2CS_CONT_CANDIDATE', 0).
-define('DIAMETER_BASE_GY_REPORTING-LEVEL_SERVICE_IDENTIFIER_LEVEL', 0).
-define('DIAMETER_BASE_GY_REPORTING-LEVEL_RATING_GROUP_LEVEL', 1).
-define('DIAMETER_BASE_GY_REPORTING-LEVEL_SPONSORED_CONNECTIVITY_LEVEL', 2).
-define('DIAMETER_BASE_GY_ONLINE_DISABLE_ONLINE', 0).
-define('DIAMETER_BASE_GY_ONLINE_ENABLE_ONLINE', 1).
-define('DIAMETER_BASE_GY_OFFLINE_DISABLE_OFFLINE', 0).
-define('DIAMETER_BASE_GY_OFFLINE_ENABLE_OFFLINE', 1).
-define('DIAMETER_BASE_GY_METERING-METHOD_DURATION', 0).
-define('DIAMETER_BASE_GY_METERING-METHOD_VOLUME', 1).
-define('DIAMETER_BASE_GY_METERING-METHOD_DURATION_VOLUME', 2).
-define('DIAMETER_BASE_GY_FINAL-UNIT-ACTION_TERMINATE', 0).
-define('DIAMETER_BASE_GY_FINAL-UNIT-ACTION_REDIRECT', 1).
-define('DIAMETER_BASE_GY_FINAL-UNIT-ACTION_RESTRICT_ACCESS', 2).
-define('DIAMETER_BASE_GY_REDIRECT-SUPPORT_REDIRECTION_DISABLED', 0).
-define('DIAMETER_BASE_GY_REDIRECT-SUPPORT_REDIRECTION_ENABLED', 1).
-define('DIAMETER_BASE_GY_REDIRECT-ADDRESS-TYPE_IPV4_ADDRESS', 0).
-define('DIAMETER_BASE_GY_REDIRECT-ADDRESS-TYPE_IPV6_ADDRESS', 1).
-define('DIAMETER_BASE_GY_REDIRECT-ADDRESS-TYPE_URL', 2).
-define('DIAMETER_BASE_GY_REDIRECT-ADDRESS-TYPE_SIP_URI', 3).
-define('DIAMETER_BASE_GY_MUTE-NOTIFICATION_MUTE_REQUIRED', 0).
-define('DIAMETER_BASE_GY_AF-SIGNALLING-PROTOCOL_NO_INFORMATION', 0).
-define('DIAMETER_BASE_GY_AF-SIGNALLING-PROTOCOL_SIP', 1).
-define('DIAMETER_BASE_GY_REQUIRED-ACCESS-INFO_USER_LOCATION', 0).
-define('DIAMETER_BASE_GY_REQUIRED-ACCESS-INFO_MS_TIME_ZONE', 1).
-define('DIAMETER_BASE_GY_RESOURCE-ALLOCATION-NOTIFICATION_ENABLE_NOTIFICATION', 0).
-define('DIAMETER_BASE_GY_CHARGING-CORRELATION-INDICATOR_CHARGING_IDENTIFIER_REQUIRED', 0).
-define('DIAMETER_BASE_GY_NETWORK-REQUEST-SUPPORT_NETWORK_REQUEST_NOT_SUPPORTED', 0).
-define('DIAMETER_BASE_GY_NETWORK-REQUEST-SUPPORT_NETWORK_REQUEST_SUPPORTED', 1).
-define('DIAMETER_BASE_GY_PACKET-FILTER-OPERATION_DELETION', 0).
-define('DIAMETER_BASE_GY_PACKET-FILTER-OPERATION_ADDITION', 1).
-define('DIAMETER_BASE_GY_PACKET-FILTER-OPERATION_MODIFICATION', 2).
-define('DIAMETER_BASE_GY_BEARER-OPERATION_TERMINATION', 0).
-define('DIAMETER_BASE_GY_BEARER-OPERATION_ESTABLISHMENT', 1).
-define('DIAMETER_BASE_GY_BEARER-OPERATION_MODIFICATION', 2).
-define('DIAMETER_BASE_GY_USER-EQUIPMENT-INFO-TYPE_IMEISV', 0).
-define('DIAMETER_BASE_GY_USER-EQUIPMENT-INFO-TYPE_MAC', 1).
-define('DIAMETER_BASE_GY_USER-EQUIPMENT-INFO-TYPE_EUI64', 2).
-define('DIAMETER_BASE_GY_USER-EQUIPMENT-INFO-TYPE_MODIFIED_EUI64', 3).
-define('DIAMETER_BASE_GY_QOS-NEGOTIATION_NO_QOS_NEGOTIATION', 0).
-define('DIAMETER_BASE_GY_QOS-NEGOTIATION_QOS_NEGOTIATION_SUPPORTED', 1).
-define('DIAMETER_BASE_GY_QOS-UPGRADE_QOS_UPGRADE_NOT_SUPPORTED', 0).
-define('DIAMETER_BASE_GY_QOS-UPGRADE_QOS_UPGRADE_SUPPORTED', 1).
-define('DIAMETER_BASE_GY_AN-GW-STATUS_AN_GW_FAILED', 0).
-define('DIAMETER_BASE_GY_BEARER-USAGE_GENERAL', 0).
-define('DIAMETER_BASE_GY_BEARER-USAGE_IMS_SIGNALLING', 1).
-define('DIAMETER_BASE_GY_PCC-RULE-STATUS_ACTIVE', 0).
-define('DIAMETER_BASE_GY_PCC-RULE-STATUS_INACTIVE', 1).
-define('DIAMETER_BASE_GY_PCC-RULE-STATUS_TEMPORARILY_INACTIVE', 2).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_UNKNOWN_RULE_NAME', 1).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_RATING_GROUP_ERROR', 2).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_SERVICE_IDENTIFIER_ERROR', 3).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_GW_PCEF_MALFUNCTION', 4).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_RESOURCES_LIMITATION', 5).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_MAX_NR_BEARERS_REACHED', 6).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_UNKNOWN_BEARER_ID', 7).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_MISSING_BEARER_ID', 8).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_MISSING_FLOW_INFORMATION', 9).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_RESOURCE_ALLOCATION_FAILURE', 10).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_UNSUCCESSFUL_QOS_VALIDATION', 11).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_INCORRECT_FLOW_INFORMATION', 12).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_PS_TO_CS_HANDOVER', 13).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_TDF_APPLICATION_IDENTIFIER_ERROR', 14).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_NO_BEARER_BOUND', 15).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_FILTER_RESTRICTIONS', 16).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_AN_GW_FAILED', 17).
-define('DIAMETER_BASE_GY_RULE-FAILURE-CODE_MISSING_REDIRECT_SERVER_ADDRESS', 18).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_SGSN_CHANGE', 0).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_QOS_CHANGE', 1).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_RAT_CHANGE', 2).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_TFT_CHANGE', 3).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_PLMN_CHANGE', 4).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_LOSS_OF_BEARER', 5).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_RECOVERY_OF_BEARER', 6).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_IP-CAN_CHANGE', 7).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_QOS_CHANGE_EXCEEDING_AUTHORIZATION', 11).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_RAI_CHANGE', 12).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_USER_LOCATION_CHANGE', 13).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_NO_EVENT_TRIGGERS', 14).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_OUT_OF_CREDIT', 15).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_REALLOCATION_OF_CREDIT', 16).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_REVALIDATION_TIMEOUT', 17).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_UE_IP_ADDRESS_ALLOCATE', 18).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_UE_IP_ADDRESS_RELEASE', 19).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_DEFAULT_EPS_BEARER_QOS_CHANGE', 20).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_AN_GW_CHANGE', 21).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_SUCCESSFUL_RESOURCE_ALLOCATION', 22).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_RESOURCE_MODIFICATION_REQUEST', 23).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_PGW_TRACE_CONTROL', 24).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_UE_TIME_ZONE_CHANGE', 25).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_TAI_CHANGE', 26).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_ECGI_CHANGE', 27).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_CHARGING_CORRELATION_EXCHANGE', 28).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_APN-AMBR_MODIFICATION_FAILURE', 29).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_USER_CSG_INFORMATION_CHANGE', 30).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_USAGE_REPORT', 33).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_DEFAULT-EPS-BEARER-QOS_MODIFICATION_FAILURE', 34).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_USER_CSG_HYBRID_SUBSCRIBED_INFORMATION_CHANGE', 35).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_USER_CSG_HYBRID_UNSUBSCRIBED_INFORMATION_CHANGE', 36).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_ROUTING_RULE_CHANGE', 37).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_APPLICATION_START', 39).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_APPLICATION_STOP', 40).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_CS_TO_PS_HANDOVER', 42).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_UE_LOCAL_IP_ADDRESS_CHANGE', 43).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_HE_NB_LOCAL_IP_ADDRESS_CHANGE', 44).
-define('DIAMETER_BASE_GY_EVENT-TRIGGER_ACCESS_NETWORK_INFO_REPORT', 45).
-define('DIAMETER_BASE_GY_TRACE-DEPTH_MINIMUM', 0).
-define('DIAMETER_BASE_GY_TRACE-DEPTH_MEDIUM', 1).
-define('DIAMETER_BASE_GY_TRACE-DEPTH_MAXIMUM', 2).
-define('DIAMETER_BASE_GY_TRACE-DEPTH_MINIMUM_WITHOUT_VENDOR_SPECIFIC_EXTENSION', 3).
-define('DIAMETER_BASE_GY_TRACE-DEPTH_MEDIUM_WITHOUT_VENDOR_SPECIFIC_EXTENSION', 4).
-define('DIAMETER_BASE_GY_TRACE-DEPTH_MAXIMUM_WITHOUT_VENDOR_SPECIFIC_EXTENSION', 5).
-define('DIAMETER_BASE_GY_TARIFF-CHANGE-USAGE_UNIT_BEFORE_TARIFF_CHANGE', 0).
-define('DIAMETER_BASE_GY_TARIFF-CHANGE-USAGE_UNIT_AFTER_TARIFF_CHANGE', 1).
-define('DIAMETER_BASE_GY_TARIFF-CHANGE-USAGE_UNIT_INDETERMINATE', 2).
-define('DIAMETER_BASE_GY_USAGE-MONITORING-LEVEL_SESSION_LEVEL', 0).
-define('DIAMETER_BASE_GY_USAGE-MONITORING-LEVEL_PCC_RULE_LEVEL', 1).
-define('DIAMETER_BASE_GY_USAGE-MONITORING-LEVEL_ADC_RULE_LEVEL', 2).
-define('DIAMETER_BASE_GY_USAGE-MONITORING-REPORT_USAGE_MONITORING_REPORT_REQUIRED', 0).
-define('DIAMETER_BASE_GY_USAGE-MONITORING-SUPPORT_USAGE_MONITORING_DISABLED', 0).
-define('DIAMETER_BASE_GY_CSG-ACCESS-MODE_CLOSED_MODE', 0).
-define('DIAMETER_BASE_GY_CSG-ACCESS-MODE_HYBRID_MODE', 1).
-define('DIAMETER_BASE_GY_CSG-MEMBERSHIP-INDICATION_NOT_CSG_MEMBER', 0).
-define('DIAMETER_BASE_GY_CSG-MEMBERSHIP-INDICATION_CSG_MEMBER', 1).
-define('DIAMETER_BASE_GY_BEARER-CONTROL-MODE_UE_ONLY', 0).
-define('DIAMETER_BASE_GY_BEARER-CONTROL-MODE_RESERVED', 1).
-define('DIAMETER_BASE_GY_BEARER-CONTROL-MODE_UE_NW', 2).
-define('DIAMETER_BASE_GY_CSG-INFORMATION-REPORTING_CHANGE_CSG_CELL', 0).
-define('DIAMETER_BASE_GY_CSG-INFORMATION-REPORTING_CHANGE_CSG_SUBSCRIBED_HYBRID_CELL', 1).
-define('DIAMETER_BASE_GY_CSG-INFORMATION-REPORTING_CHANGE_CSG_UNSUBSCRIBED_HYBRID_CELL', 2).
-define('DIAMETER_BASE_GY_REQUESTED-ACTION_DIRECT_DEBITING', 0).
-define('DIAMETER_BASE_GY_REQUESTED-ACTION_REFUND_ACCOUNT', 1).
-define('DIAMETER_BASE_GY_REQUESTED-ACTION_CHECK_BALANCE', 2).
-define('DIAMETER_BASE_GY_REQUESTED-ACTION_PRICE_ENQUIRY', 3).
-define('DIAMETER_BASE_GY_AOC-REQUEST-TYPE_AOC_NOT_REQUESTED', 0).
-define('DIAMETER_BASE_GY_AOC-REQUEST-TYPE_AOC_FULL', 1).
-define('DIAMETER_BASE_GY_AOC-REQUEST-TYPE_AOC_COST_ONLY', 2).
-define('DIAMETER_BASE_GY_AOC-REQUEST-TYPE_AOC_TARIFF_ONLY', 3).
-define('DIAMETER_BASE_GY_MULTIPLE-SERVICES-INDICATOR_MULTIPLE_SERVICES_NOT_SUPPORTED', 0).
-define('DIAMETER_BASE_GY_MULTIPLE-SERVICES-INDICATOR_MULTIPLE_SERVICES_SUPPORTED', 1).
-define('DIAMETER_BASE_GY_REPORTING-REASON_THRESHOLD', 0).
-define('DIAMETER_BASE_GY_REPORTING-REASON_QHT', 1).
-define('DIAMETER_BASE_GY_REPORTING-REASON_FINAL', 2).
-define('DIAMETER_BASE_GY_REPORTING-REASON_QUOTA_EXHAUSTED', 3).
-define('DIAMETER_BASE_GY_REPORTING-REASON_VALIDITY_TIME', 4).
-define('DIAMETER_BASE_GY_REPORTING-REASON_OTHER_QUOTA_TYPE', 5).
-define('DIAMETER_BASE_GY_REPORTING-REASON_RATING_CONDITION_CHANGE', 6).
-define('DIAMETER_BASE_GY_REPORTING-REASON_FORCED_REAUTHORISATION', 7).
-define('DIAMETER_BASE_GY_REPORTING-REASON_POOL_EXHAUSTED', 8).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_SGSN_IP_ADDRESS', 1).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_QOS', 2).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_LOCATION', 3).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_RAT', 4).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_UE_TIMEZONE', 5).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_TRAFFIC_CLASS', 10).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_RELIABILITY_CLASS', 11).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_DELAY_CLASS', 12).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_PEAK_THROUGHPUT', 13).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_PRECEDENCE_CLASS', 14).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_MEAN_THROUGHPUT', 15).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_MAXIMUM_BIT_RATE_FOR_UPLINK', 16).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_MAXIMUM_BIT_RATE_FOR_DOWNLINK', 17).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_RESIDUAL_BER', 18).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_SDU_ERROR_RATIO', 19).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_TRANSFER_DELAY', 20).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_TRAFFIC_HANDLING_PRIORITY', 21).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_GUARANTEED_BIT_RATE_FOR_UPLINK', 22).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINQOS_GUARANTEED_BIT_RATE_FOR_DOWNLINK', 23).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINLOCATION_MCC', 30).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINLOCATION_MNC', 31).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINLOCATION_RAC', 32).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINLOCATION_LAC', 33).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINLOCATION_CELLID', 34).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINLOCATION_TAC', 35).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGEINLOCATION_ECGI', 36).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_MEDIA_COMPOSITION', 40).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_PARTICIPANTS_NMB', 50).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_THRSHLD_OF_PARTICIPANTS_NMB', 51).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_USER_PARTICIPATING_TYPE', 52).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_SERVICE_CONDITION', 60).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_SERVING_NODE', 61).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_USER_CSG_INFORMATION', 70).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_HYBRID_SUBSCRIBED_USER_CSG_INFORMATION', 71).
-define('DIAMETER_BASE_GY_TRIGGER-TYPE_CHANGE_IN_HYBRID_UNSUBSCRIBED_USER_CSG_INFORMATION', 72).
-define('DIAMETER_BASE_GY_CC-UNIT-TYPE_TIME', 0).
-define('DIAMETER_BASE_GY_CC-UNIT-TYPE_MONEY', 1).
-define('DIAMETER_BASE_GY_CC-UNIT-TYPE_TOTAL-OCTETS', 2).
-define('DIAMETER_BASE_GY_CC-UNIT-TYPE_INPUT-OCTETS', 3).
-define('DIAMETER_BASE_GY_CC-UNIT-TYPE_OUTPUT-OCTETS', 4).
-define('DIAMETER_BASE_GY_CC-UNIT-TYPE_SERVICE-SPECIFIC-UNITS', 5).
-define('DIAMETER_BASE_GY_CHARGE-REASON-CODE_UNKNOWN', 0).
-define('DIAMETER_BASE_GY_CHARGE-REASON-CODE_USAGE', 1).
-define('DIAMETER_BASE_GY_CHARGE-REASON-CODE_COMMUNICATION-ATTEMPT-CHARGE', 2).
-define('DIAMETER_BASE_GY_CHARGE-REASON-CODE_SETUP-CHARGE', 3).
-define('DIAMETER_BASE_GY_CHARGE-REASON-CODE_ADD-ON-CHARGE', 4).
-define('DIAMETER_BASE_GY_AOC-SERVICE-OBLIGATORY-TYPE_NON_BINDING', 0).
-define('DIAMETER_BASE_GY_AOC-SERVICE-OBLIGATORY-TYPE_BINDING', 1).
-define('DIAMETER_BASE_GY_AOC-SERVICE-TYPE_NONE', 0).
-define('DIAMETER_BASE_GY_AOC-SERVICE-TYPE_AOC-S', 1).
-define('DIAMETER_BASE_GY_AOC-SERVICE-TYPE_AOC-D', 2).
-define('DIAMETER_BASE_GY_AOC-SERVICE-TYPE_AOC-E', 3).
-define('DIAMETER_BASE_GY_AOC-FORMAT_MONETARY', 0).
-define('DIAMETER_BASE_GY_AOC-FORMAT_NON_MONETARY', 1).
-define('DIAMETER_BASE_GY_AOC-FORMAT_CAI', 2).
-define('DIAMETER_BASE_GY_3GPP-PDP-TYPE_IPV4', 0).
-define('DIAMETER_BASE_GY_3GPP-PDP-TYPE_IPV6', 1).
-define('DIAMETER_BASE_GY_3GPP-PDP-TYPE_IPV4V6', 2).
-define('DIAMETER_BASE_GY_DYNAMIC-ADDRESS-FLAG_STATIC', 0).
-define('DIAMETER_BASE_GY_DYNAMIC-ADDRESS-FLAG_DYNAMIC', 1).
-define('DIAMETER_BASE_GY_DYNAMIC-ADDRESS-FLAG-EXTENSION_STATIC', 0).
-define('DIAMETER_BASE_GY_DYNAMIC-ADDRESS-FLAG-EXTENSION_DYNAMIC', 1).
-define('DIAMETER_BASE_GY_SERVING-NODE-TYPE_SGSN', 0).
-define('DIAMETER_BASE_GY_SERVING-NODE-TYPE_PMIPSGW', 1).
-define('DIAMETER_BASE_GY_SERVING-NODE-TYPE_GTPSGW', 2).
-define('DIAMETER_BASE_GY_SERVING-NODE-TYPE_EPDG', 3).
-define('DIAMETER_BASE_GY_SERVING-NODE-TYPE_HSGW', 4).
-define('DIAMETER_BASE_GY_SERVING-NODE-TYPE_MME', 5).
-define('DIAMETER_BASE_GY_SERVING-NODE-TYPE_TWAN', 6).
-define('DIAMETER_BASE_GY_SGW-CHANGE_ACR_START_NOT_DUE_TO_SGW_CHANGE', 0).
-define('DIAMETER_BASE_GY_SGW-CHANGE_ACR_START_DUE_TO_SGW_CHANGE', 1).
-define('DIAMETER_BASE_GY_IMSI-UNAUTHENTICATED-FLAG_AUTHENTICATED', 0).
-define('DIAMETER_BASE_GY_IMSI-UNAUTHENTICATED-FLAG_UNAUTHENTICATED', 1).
-define('DIAMETER_BASE_GY_TIME-QUOTA-TYPE_DISCRETE_TIME_PERIOD', 0).
-define('DIAMETER_BASE_GY_TIME-QUOTA-TYPE_CONTINUOUS_TIME_PERIOD', 1).
-define('DIAMETER_BASE_GY_PS-APPEND-FREE-FORMAT-DATA_APPEND', 0).
-define('DIAMETER_BASE_GY_PS-APPEND-FREE-FORMAT-DATA_OVERWRITE', 1).
-define('DIAMETER_BASE_GY_ENVELOPE-REPORTING_DO_NOT_REPORT_ENVELOPES', 0).
-define('DIAMETER_BASE_GY_ENVELOPE-REPORTING_REPORT_ENVELOPES', 1).
-define('DIAMETER_BASE_GY_ENVELOPE-REPORTING_REPORT_ENVELOPES_WITH_VOLUME', 2).
-define('DIAMETER_BASE_GY_ENVELOPE-REPORTING_REPORT_ENVELOPES_WITH_EVENTS', 3).
-define('DIAMETER_BASE_GY_ENVELOPE-REPORTING_REPORT_ENVELOPES_WITH_VOLUME_AND_EVENTS', 4).
-define('DIAMETER_BASE_GY_PDP-CONTEXT-TYPE_PRIMARY', 0).
-define('DIAMETER_BASE_GY_PDP-CONTEXT-TYPE_SECONDARY', 1).
-define('DIAMETER_BASE_GY_LOW-PRIORITY-INDICATOR_NO', 0).
-define('DIAMETER_BASE_GY_LOW-PRIORITY-INDICATOR_YES', 1).
-define('DIAMETER_BASE_GY_CHARGING-CHARACTERISTICS-SELECTION-MODE_SERVING-NODE-SUPPLIED', 0).
-define('DIAMETER_BASE_GY_CHARGING-CHARACTERISTICS-SELECTION-MODE_SUBSCRIPTION-SPECIFIC', 1).
-define('DIAMETER_BASE_GY_CHARGING-CHARACTERISTICS-SELECTION-MODE_APN-SPECIFIC', 2).
-define('DIAMETER_BASE_GY_CHARGING-CHARACTERISTICS-SELECTION-MODE_HOME-DEFAULT', 3).
-define('DIAMETER_BASE_GY_CHARGING-CHARACTERISTICS-SELECTION-MODE_ROAMING-DEFAULT', 4).
-define('DIAMETER_BASE_GY_CHARGING-CHARACTERISTICS-SELECTION-MODE_VISITING-DEFAULT', 5).
-define('DIAMETER_BASE_GY_CC-SESSION-FAILOVER_FAILOVER_NOT_SUPPORTED', 0).
-define('DIAMETER_BASE_GY_CC-SESSION-FAILOVER_FAILOVER_SUPPORTED', 1).



%%% -------------------------------------------------------
%%% DEFINE Macros:
%%% -------------------------------------------------------

-define('DIAMETER_BASE_GY_RESULT-CODE_MULTI_ROUND_AUTH', 1001).
-define('DIAMETER_BASE_GY_RESULT-CODE_SUCCESS', 2001).
-define('DIAMETER_BASE_GY_RESULT-CODE_LIMITED_SUCCESS', 2002).
-define('DIAMETER_BASE_GY_RESULT-CODE_COMMAND_UNSUPPORTED', 3001).
-define('DIAMETER_BASE_GY_RESULT-CODE_UNABLE_TO_DELIVER', 3002).
-define('DIAMETER_BASE_GY_RESULT-CODE_REALM_NOT_SERVED', 3003).
-define('DIAMETER_BASE_GY_RESULT-CODE_TOO_BUSY', 3004).
-define('DIAMETER_BASE_GY_RESULT-CODE_LOOP_DETECTED', 3005).
-define('DIAMETER_BASE_GY_RESULT-CODE_REDIRECT_INDICATION', 3006).
-define('DIAMETER_BASE_GY_RESULT-CODE_APPLICATION_UNSUPPORTED', 3007).
-define('DIAMETER_BASE_GY_RESULT-CODE_INVALID_HDR_BITS', 3008).
-define('DIAMETER_BASE_GY_RESULT-CODE_INVALID_AVP_BITS', 3009).
-define('DIAMETER_BASE_GY_RESULT-CODE_UNKNOWN_PEER', 3010).
-define('DIAMETER_BASE_GY_RESULT-CODE_AUTHENTICATION_REJECTED', 4001).
-define('DIAMETER_BASE_GY_RESULT-CODE_OUT_OF_SPACE', 4002).
-define('DIAMETER_BASE_GY_RESULT-CODE_ELECTION_LOST', 4003).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_END_USER_SERVICE_DENIED', 4010).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_CREDIT_CONTROL_NOT_APPLICABLE', 4011).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_CREDIT_LIMIT_REACHED', 4012).
-define('DIAMETER_BASE_GY_RESULT-CODE_AVP_UNSUPPORTED', 5001).
-define('DIAMETER_BASE_GY_RESULT-CODE_UNKNOWN_SESSION_ID', 5002).
-define('DIAMETER_BASE_GY_RESULT-CODE_AUTHORIZATION_REJECTED', 5003).
-define('DIAMETER_BASE_GY_RESULT-CODE_INVALID_AVP_VALUE', 5004).
-define('DIAMETER_BASE_GY_RESULT-CODE_MISSING_AVP', 5005).
-define('DIAMETER_BASE_GY_RESULT-CODE_RESOURCES_EXCEEDED', 5006).
-define('DIAMETER_BASE_GY_RESULT-CODE_CONTRADICTING_AVPS', 5007).
-define('DIAMETER_BASE_GY_RESULT-CODE_AVP_NOT_ALLOWED', 5008).
-define('DIAMETER_BASE_GY_RESULT-CODE_AVP_OCCURS_TOO_MANY_TIMES', 5009).
-define('DIAMETER_BASE_GY_RESULT-CODE_NO_COMMON_APPLICATION', 5010).
-define('DIAMETER_BASE_GY_RESULT-CODE_UNSUPPORTED_VERSION', 5011).
-define('DIAMETER_BASE_GY_RESULT-CODE_UNABLE_TO_COMPLY', 5012).
-define('DIAMETER_BASE_GY_RESULT-CODE_INVALID_BIT_IN_HEADER', 5013).
-define('DIAMETER_BASE_GY_RESULT-CODE_INVALID_AVP_LENGTH', 5014).
-define('DIAMETER_BASE_GY_RESULT-CODE_INVALID_MESSAGE_LENGTH', 5015).
-define('DIAMETER_BASE_GY_RESULT-CODE_INVALID_AVP_BIT_COMBO', 5016).
-define('DIAMETER_BASE_GY_RESULT-CODE_NO_COMMON_SECURITY', 5017).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_MULTI_ROUND_AUTH', 1001).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_SUCCESS', 2001).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_LIMITED_SUCCESS', 2002).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_COMMAND_UNSUPPORTED', 3001).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_UNABLE_TO_DELIVER', 3002).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_REALM_NOT_SERVED', 3003).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_TOO_BUSY', 3004).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_LOOP_DETECTED', 3005).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_REDIRECT_INDICATION', 3006).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_APPLICATION_UNSUPPORTED', 3007).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_INVALID_HDR_BITS', 3008).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_INVALID_AVP_BITS', 3009).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_UNKNOWN_PEER', 3010).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_AUTHENTICATION_REJECTED', 4001).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_OUT_OF_SPACE', 4002).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_ELECTION_LOST', 4003).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_AVP_UNSUPPORTED', 5001).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_UNKNOWN_SESSION_ID', 5002).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_AUTHORIZATION_REJECTED', 5003).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_INVALID_AVP_VALUE', 5004).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_MISSING_AVP', 5005).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_RESOURCES_EXCEEDED', 5006).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_CONTRADICTING_AVPS', 5007).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_AVP_NOT_ALLOWED', 5008).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_AVP_OCCURS_TOO_MANY_TIMES', 5009).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_NO_COMMON_APPLICATION', 5010).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_UNSUPPORTED_VERSION', 5011).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_UNABLE_TO_COMPLY', 5012).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_INVALID_BIT_IN_HEADER', 5013).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_INVALID_AVP_LENGTH', 5014).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_INVALID_MESSAGE_LENGTH', 5015).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_INVALID_AVP_BIT_COMBO', 5016).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_NO_COMMON_SECURITY', 5017).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_USER_UNKNOWN', 5030).
-define('DIAMETER_BASE_GY_RESULT-CODE_DIAMETER_RATING_FAILED', 5031).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_DIAMETER_LOGOUT', 1).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_DIAMETER_SERVICE_NOT_PROVIDED', 2).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_DIAMETER_BAD_ANSWER', 3).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_DIAMETER_ADMINISTRATIVE', 4).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_DIAMETER_LINK_BROKEN', 5).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_DIAMETER_AUTH_EXPIRED', 6).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_DIAMETER_USER_MOVED', 7).
-define('DIAMETER_BASE_GY_TERMINATION-CAUSE_DIAMETER_SESSION_TIMEOUT', 8).

