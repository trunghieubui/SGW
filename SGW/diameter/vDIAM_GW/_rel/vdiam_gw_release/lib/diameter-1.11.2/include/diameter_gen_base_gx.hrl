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

-hrl_name('diameter_gen_base_gx.hrl').


%%% -------------------------------------------------------
%%% Message records:
%%% -------------------------------------------------------

-record(diameter_base_CER,
	{'Origin-Host', 'Origin-Realm', 'Host-IP-Address' = [],
	 'Vendor-Id', 'Product-Name', 'Origin-State-Id' = [],
	 'Supported-Vendor-Id' = [], 'Auth-Application-Id' = [],
	 'Inband-Security-Id' = [], 'Acct-Application-Id' = [],
	 'Vendor-Specific-Application-Id' = [],
	 'Firmware-Revision' = [], 'AVP' = []}).

-record(diameter_base_CEA,
	{'Result-Code', 'Origin-Host', 'Origin-Realm',
	 'Host-IP-Address' = [], 'Vendor-Id', 'Product-Name',
	 'Origin-State-Id' = [], 'Error-Message' = [],
	 'Failed-AVP' = [], 'Supported-Vendor-Id' = [],
	 'Auth-Application-Id' = [], 'Inband-Security-Id' = [],
	 'Acct-Application-Id' = [],
	 'Vendor-Specific-Application-Id' = [],
	 'Firmware-Revision' = [], 'AVP' = []}).

-record(diameter_base_DPR,
	{'Origin-Host', 'Origin-Realm', 'Disconnect-Cause'}).

-record(diameter_base_DPA,
	{'Result-Code', 'Origin-Host', 'Origin-Realm',
	 'Error-Message' = [], 'Failed-AVP' = []}).

-record(diameter_base_DWR,
	{'Origin-Host', 'Origin-Realm',
	 'Origin-State-Id' = []}).

-record(diameter_base_DWA,
	{'Result-Code', 'Origin-Host', 'Origin-Realm',
	 'Error-Message' = [], 'Failed-AVP' = [],
	 'Origin-State-Id' = []}).

-record('diameter_base_answer-message',
	{'Session-Id' = [], 'Origin-Host', 'Origin-Realm',
	 'Result-Code', 'Origin-State-Id' = [],
	 'Error-Reporting-Host' = [], 'Proxy-Info' = [],
	 'AVP' = []}).

-record(diameter_base_CCR,
	{'Session-Id', 'Auth-Application-Id', 'Origin-Host',
	 'Origin-Realm', 'Destination-Realm', 'CC-Request-Type',
	 'CC-Request-Number', 'Destination-Host' = [],
	 'Origin-State-Id' = [], 'Subscription-Id' = [],
	 'Supported-Features' = [], 'TDF-Information' = [],
	 'Network-Request-Support' = [],
	 'Packet-Filter-Information' = [],
	 'Packet-Filter-Operation' = [],
	 'Bearer-Identifier' = [], 'Framed-IP-Address' = [],
	 'Framed-Ipv6-Prefix' = [], 'IP-CAN-Type' = [],
	 '3GPP-RAT-Type' = [], 'RAT-Type' = [],
	 'Termination-Cause' = [], 'User-Equipment-Info' = [],
	 'QoS-Information' = [], 'QoS-Negotiation' = [],
	 'QoS-Upgrade' = [], 'Default-EPS-Bearer-QoS' = [],
	 'AN-GW-Address' = [], 'AN-GW-Status' = [],
	 '3GPP-SGSN-MCC-MNC' = [], '3GPP-SGSN-Address' = [],
	 '3GPP-SGSN-Ipv6-Address' = [], '3GPP-GGSN-Address' = [],
	 '3GPP-GGSN-Ipv6-Address' = [], 'RAI' = [],
	 '3GPP-User-Location-Info' = [],
	 'User-Location-Info-Time' = [], 'TWAN-Identifier' = [],
	 '3GPP-MS-TimeZone' = [], 'Called-Station-Id' = [],
	 'PDN-Connection-ID' = [], 'Bearer-Usage' = [],
	 'Online' = [], 'Offline' = [],
	 'TFT-Packet-Filter-Information' = [],
	 'Charging-Rule-Report' = [],
	 'Application-Detection-Information' = [],
	 'Event-Trigger' = [], 'Event-Report-Indication' = [],
	 'Access-Network-Charging-Address' = [],
	 'Access-Network-Charging-Identifier-Gx' = [],
	 'CoA-Information' = [],
	 'Usage-Monitoring-Information' = [],
	 'Routing-Rule-Install' = [], 'Routing-Rule-Remove' = [],
	 'HeNB-Local-IP-Address' = [],
	 'UE-Local-IP-Address' = [], 'UDP-Source-Port' = [],
	 'AVP' = []}).

-record(diameter_base_CCA,
	{'Session-Id', 'Auth-Application-Id', 'Origin-Host',
	 'Origin-Realm', 'Result-Code' = [],
	 'Experimental-Result' = [], 'CC-Request-Type' = [],
	 'CC-Request-Number' = [], 'Supported-Features' = [],
	 'Bearer-Control-Mode' = [], 'Event-Trigger' = [],
	 'Event-Report-Indication' = [], 'Origin-State-Id' = [],
	 'Redirect-Host' = [], 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [],
	 'Charging-Rule-Remove' = [],
	 'Charging-Rule-Install' = [],
	 'Charging-Information' = [], 'Online' = [],
	 'Offline' = [], 'QoS-Information' = [],
	 'Revalidation-Time' = [], 'Default-EPS-Bearer-QoS' = [],
	 'Bearer-Usage' = [],
	 'Usage-Monitoring-Information' = [],
	 'CSG-Information-Reporting' = [],
	 'User-CSG-Information' = [], 'Error-Message' = [],
	 'Error-Reporting-Host' = [], 'Failed-AVP' = [],
	 'Proxy-Info' = [], 'Route-Record' = [], 'AVP' = []}).

-record(diameter_base_RAR,
	{'Session-Id', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'Destination-Host',
	 'Auth-Application-Id', 'Re-Auth-Request-Type',
	 'Session-Release-Cause' = [], 'Origin-State-Id' = [],
	 'Event-Trigger' = [], 'Event-Report-Indication' = [],
	 'Charging-Rule-Remove' = [],
	 'Charging-Rule-Install' = [],
	 'Default-EPS-Bearer-QoS' = [], 'QoS-Information' = [],
	 'Revalidation-Time' = [],
	 'Usage-Monitoring-Information' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record(diameter_base_RAA,
	{'Session-Id', 'Result-Code', 'Origin-Host',
	 'Origin-Realm', 'Origin-State-Id' = [],
	 'Experimental-Result' = [], 'IP-CAN-Type' = [],
	 'RAT-Type' = [], 'AN-GW-Address' = [],
	 '3GPP-SGSN-MCC-MNC' = [], '3GPP-SGSN-Address' = [],
	 'RAI' = [], '3GPP-User-Location-Info' = [],
	 'User-Location-Info-Time' = [], '3GPP-MS-TimeZone' = [],
	 'Charging-Rule-Report' = [], 'Error-Message' = [],
	 'Error-Reporting-Host' = [], 'Failed-AVP' = [],
	 'Proxy-Info' = [], 'AVP' = []}).

-record(diameter_base_STR,
	{'Session-Id', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'Auth-Application-Id',
	 'Termination-Cause', 'User-Name' = [],
	 'Destination-Host' = [], 'Class' = [],
	 'Origin-State-Id' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record(diameter_base_STA,
	{'Session-Id', 'Result-Code', 'Origin-Host',
	 'Origin-Realm', 'User-Name' = [], 'Class' = [],
	 'Error-Message' = [], 'Error-Reporting-Host' = [],
	 'Failed-AVP' = [], 'Origin-State-Id' = [],
	 'Redirect-Host' = [], 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'AVP' = []}).

-record(diameter_base_ASR,
	{'Session-Id', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'Destination-Host',
	 'Auth-Application-Id', 'User-Name' = [],
	 'Origin-State-Id' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record(diameter_base_ASA,
	{'Session-Id', 'Result-Code', 'Origin-Host',
	 'Origin-Realm', 'User-Name' = [],
	 'Origin-State-Id' = [], 'Error-Message' = [],
	 'Error-Reporting-Host' = [], 'Failed-AVP' = [],
	 'Redirect-Host' = [], 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'AVP' = []}).

-record(diameter_base_ACR,
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

-record(diameter_base_ACA,
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

-record('diameter_base_Proxy-Info',
	{'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('diameter_base_Failed-AVP', {'AVP' = []}).

-record('diameter_base_Experimental-Result',
	{'Vendor-Id', 'Experimental-Result-Code'}).

-record('diameter_base_Vendor-Specific-Application-Id',
	{'Vendor-Id' = [], 'Auth-Application-Id' = [],
	 'Acct-Application-Id' = []}).

-record('diameter_base_Subscription-Id',
	{'Subscription-Id-Type', 'Subscription-Id-Data'}).

-record('diameter_base_Charging-Rule-Install',
	{'Charging-Rule-Definition' = [],
	 'Charging-Rule-Name' = [],
	 'Charging-Rule-Base-Name' = [],
	 'Bearer-Identifier' = [], 'Rule-Activation-Time' = [],
	 'Rule-Deactivation-Time' = [],
	 'Resource-Allocation-Notification' = [],
	 'Charging-Correlation-Indicator' = []}).

-record('diameter_base_Charging-Rule-Definition',
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

-record('diameter_base_Flow-Information',
	{'Flow-Description' = [],
	 'Packet-Filter-Identifier' = [],
	 'Packet-Filter-Usage' = [], 'ToS-Traffic-Class' = [],
	 'Security-Parameter-Index' = [], 'Flow-Label' = [],
	 'Flow-Direction' = [], 'AVP' = []}).

-record('diameter_base_QoS-Information',
	{'QoS-Class-Identifier' = [],
	 'Max-Requested-Bandwidth-UL' = [],
	 'Max-Requested-Bandwidth-DL' = [],
	 'Guaranteed-Bitrate-UL' = [],
	 'Guaranteed-Bitrate-DL' = [], 'Bearer-Identifier' = [],
	 'Allocation-Retention-Priority' = [],
	 'APN-Aggregate-Max-Bitrate-UL' = [],
	 'APN-Aggregate-Max-Bitrate-DL' = [], 'AVP' = []}).

-record('diameter_base_Allocation-Retention-Priority',
	{'Priority-Level' = [], 'Pre-emption-Capability' = [],
	 'Pre-emption-Vulnerability' = []}).

-record(diameter_base_Flows,
	{'Media-Component-Number', 'Flow-Number' = [],
	 'Final-Unit-Action' = []}).

-record('diameter_base_Redirect-Information',
	{'Redirect-Support' = [], 'Redirect-Address-Type' = [],
	 'Redirect-Server-Address' = [], 'AVP' = []}).

-record('diameter_base_Supported-Features',
	{'Vendor-Id', 'Feature-List-ID', 'Feature-List',
	 'AVP' = []}).

-record('diameter_base_TDF-Information',
	{'TDF-Destination-Realm' = [],
	 'TDF-Destination-Host' = [], 'TDF-IP-Address' = []}).

-record('diameter_base_Packet-Filter-Information',
	{'Packet-Filter-Identifier' = [], 'Precedence' = [],
	 'Packet-Filter-Content' = [], 'ToS-Traffic-Class' = [],
	 'Security-Parameter-Index' = [], 'Flow-Label' = [],
	 'Flow-Direction' = [], 'AVP' = []}).

-record('diameter_base_User-Equipment-Info',
	{'User-Equipment-Info-Type',
	 'User-Equipment-Info-Value'}).

-record('diameter_base_Default-EPS-Bearer-QoS',
	{'QoS-Class-Identifier' = [],
	 'Allocation-Retention-Priority' = [], 'AVP' = []}).

-record('diameter_base_TFT-Packet-Filter-Information',
	{'Precedence' = [], 'TFT-Filter' = [],
	 'ToS-Traffic-Class' = [],
	 'Security-Parameter-Index' = [], 'Flow-Label' = [],
	 'Flow-Direction' = [], 'AVP' = []}).

-record('diameter_base_Charging-Rule-Report',
	{'Charging-Rule-Name' = [],
	 'Charging-Rule-Base-Name' = [],
	 'Bearer-Identifier' = [], 'PCC-Rule-Status' = [],
	 'Rule-Failure-Code' = [], 'Final-Unit-Indication' = [],
	 'AVP' = []}).

-record('diameter_base_Final-Unit-Indication',
	{'Final-Unit-Action' = [],
	 'Restriction-Filter-Rule' = [], 'Filter-Id' = [],
	 'Redirect-Server' = []}).

-record('diameter_base_Redirect-Server',
	{'Redirect-Address-Type', 'Redirect-Server-Address'}).

-record('diameter_base_Application-Detection-Information',
	{'TDF-Application-Identifier' = [],
	 'TDF-Application-Instance-Identifier' = [],
	 'Flow-Information' = [], 'AVP' = []}).

-record('diameter_base_Event-Report-Indication',
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

-record('diameter_base_Trace-Data',
	{'Trace-Reference', 'Trace-Depth', 'Trace-NE-Type-List',
	 'Trace-Interface-List' = [], 'Trace-Event-List' = [],
	 'OMC-Id' = [], 'Trace-Collection-Entity' = [],
	 'AVP' = []}).

-record('diameter_base_Access-Network-Charging-Identifier-Gx',
	{'Access-Network-Charging-Identifier-Value',
	 'Charging-Rule-Base-Name' = [],
	 'Charging-Rule-Name' = []}).

-record('diameter_base_CoA-Information',
	{'Tunnel-Information', 'CoA-IP-Address', 'AVP' = []}).

-record('diameter_base_Tunnel-Information',
	{'Tunnel-Header-Length' = [],
	 'Tunnel-Header-Filter' = [], 'AVP' = []}).

-record('diameter_base_Usage-Monitoring-Information',
	{'Monitoring-Key' = [], 'Granted-Service-Unit' = [],
	 'Used-Service-Unit' = [], 'Usage-Monitoring-Level' = [],
	 'Usage-Monitoring-Report' = [],
	 'Usage-Monitoring-Support' = [], 'AVP' = []}).

-record('diameter_base_Granted-Service-Unit',
	{'Tariff-Time-Change' = [], 'CC-Time' = [],
	 'CC-Money' = [], 'CC-Total-Octets' = [],
	 'CC-Input-Octets' = [], 'CC-Output-Octets' = [],
	 'CC-Service-Specific-Units' = [], 'AVP' = []}).

-record('diameter_base_CC-Money',
	{'Unit-Value', 'Currency-Code' = []}).

-record('diameter_base_Used-Service-Unit',
	{'Tariff-Change-Usage' = [], 'CC-Time' = [],
	 'CC-Money' = [], 'CC-Total-Octets' = [],
	 'CC-Input-Octets' = [], 'CC-Output-Octets' = [],
	 'CC-Service-Specific-Units' = [], 'AVP' = []}).

-record('diameter_base_Routing-Rule-Install',
	{'Routing-Rule-Definition' = [], 'AVP' = []}).

-record('diameter_base_Routing-Rule-Definition',
	{'Routing-Rule-Identifier', 'Routing-Filter' = [],
	 'Precedence' = [], 'Routing-IP-Address' = [],
	 'AVP' = []}).

-record('diameter_base_Routing-Filter',
	{'Flow-Description', 'Flow-Direction',
	 'ToS-Traffic-Class' = [],
	 'Security-Parameter-Index' = [], 'Flow-Label' = [],
	 'AVP' = []}).

-record('diameter_base_Routing-Rule-Remove',
	{'Routing-Rule-Identifier' = [], 'AVP' = []}).

-record('diameter_base_Unit-Value',
	{'Value-Digits', 'Exponent' = []}).

-record('diameter_base_User-CSG-Information',
	{'CSG-Id', 'CSG-Access-Mode',
	 'CSG-Membership-Indication' = []}).

-record('diameter_base_Charging-Rule-Remove',
	{'Charging-Rule-Name' = [],
	 'Charging-Rule-Base-Name' = [],
	 'Required-Access-Info' = [], 'AVP' = []}).

-record('diameter_base_Charging-Information',
	{'Primary-Event-Charging-Function-Name' = [],
	 'Secondary-Event-Charging-Function-Name' = [],
	 'Primary-Charging-Collection-Function-Name' = [],
	 'Secondary-Charging-Collection-Function-Name' = [],
	 'AVP' = []}).

-record('diameter_base_E2E-Sequence', {'AVP' = []}).


%%% -------------------------------------------------------
%%% ENUM Macros:
%%% -------------------------------------------------------

-define('DIAMETER_BASE_DISCONNECT-CAUSE_REBOOTING', 0).
-define('DIAMETER_BASE_DISCONNECT-CAUSE_BUSY', 1).
-define('DIAMETER_BASE_DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU', 2).
-define('DIAMETER_BASE_REDIRECT-HOST-USAGE_DONT_CACHE', 0).
-define('DIAMETER_BASE_REDIRECT-HOST-USAGE_ALL_SESSION', 1).
-define('DIAMETER_BASE_REDIRECT-HOST-USAGE_ALL_REALM', 2).
-define('DIAMETER_BASE_REDIRECT-HOST-USAGE_REALM_AND_APPLICATION', 3).
-define('DIAMETER_BASE_REDIRECT-HOST-USAGE_ALL_APPLICATION', 4).
-define('DIAMETER_BASE_REDIRECT-HOST-USAGE_ALL_HOST', 5).
-define('DIAMETER_BASE_REDIRECT-HOST-USAGE_ALL_USER', 6).
-define('DIAMETER_BASE_AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY', 1).
-define('DIAMETER_BASE_AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 2).
-define('DIAMETER_BASE_AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 3).
-define('DIAMETER_BASE_AUTH-SESSION-STATE_STATE_MAINTAINED', 0).
-define('DIAMETER_BASE_AUTH-SESSION-STATE_NO_STATE_MAINTAINED', 1).
-define('DIAMETER_BASE_RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 0).
-define('DIAMETER_BASE_RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 1).
-define('DIAMETER_BASE_TERMINATION-CAUSE_LOGOUT', 1).
-define('DIAMETER_BASE_TERMINATION-CAUSE_SERVICE_NOT_PROVIDED', 2).
-define('DIAMETER_BASE_TERMINATION-CAUSE_BAD_ANSWER', 3).
-define('DIAMETER_BASE_TERMINATION-CAUSE_ADMINISTRATIVE', 4).
-define('DIAMETER_BASE_TERMINATION-CAUSE_LINK_BROKEN', 5).
-define('DIAMETER_BASE_TERMINATION-CAUSE_AUTH_EXPIRED', 6).
-define('DIAMETER_BASE_TERMINATION-CAUSE_USER_MOVED', 7).
-define('DIAMETER_BASE_TERMINATION-CAUSE_SESSION_TIMEOUT', 8).
-define('DIAMETER_BASE_SESSION-SERVER-FAILOVER_REFUSE_SERVICE', 0).
-define('DIAMETER_BASE_SESSION-SERVER-FAILOVER_TRY_AGAIN', 1).
-define('DIAMETER_BASE_SESSION-SERVER-FAILOVER_ALLOW_SERVICE', 2).
-define('DIAMETER_BASE_SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE', 3).
-define('DIAMETER_BASE_ACCOUNTING-RECORD-TYPE_EVENT_RECORD', 1).
-define('DIAMETER_BASE_ACCOUNTING-RECORD-TYPE_START_RECORD', 2).
-define('DIAMETER_BASE_ACCOUNTING-RECORD-TYPE_INTERIM_RECORD', 3).
-define('DIAMETER_BASE_ACCOUNTING-RECORD-TYPE_STOP_RECORD', 4).
-define('DIAMETER_BASE_ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT', 1).
-define('DIAMETER_BASE_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE', 2).
-define('DIAMETER_BASE_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE', 3).
-define('DIAMETER_BASE_CC-REQUEST-TYPE_INITIAL_REQUEST', 1).
-define('DIAMETER_BASE_CC-REQUEST-TYPE_UPDATE_REQUEST', 2).
-define('DIAMETER_BASE_CC-REQUEST-TYPE_TERMINATION_REQUEST', 3).
-define('DIAMETER_BASE_CC-REQUEST-TYPE_EVENT_REQUEST', 4).
-define('DIAMETER_BASE_SUBSCRIPTION-ID-TYPE_END_USER_E164', 0).
-define('DIAMETER_BASE_SUBSCRIPTION-ID-TYPE_END_USER_IMSI', 1).
-define('DIAMETER_BASE_SUBSCRIPTION-ID-TYPE_END_USER_SIP_URI', 2).
-define('DIAMETER_BASE_SUBSCRIPTION-ID-TYPE_END_USER_NAI', 3).
-define('DIAMETER_BASE_SUBSCRIPTION-ID-TYPE_END_USER_PRIVATE', 4).
-define('DIAMETER_BASE_IP-CAN-TYPE_3GPP-GPRS', 0).
-define('DIAMETER_BASE_IP-CAN-TYPE_DOCSIS', 1).
-define('DIAMETER_BASE_IP-CAN-TYPE_XDSL', 2).
-define('DIAMETER_BASE_IP-CAN-TYPE_WIMAX', 3).
-define('DIAMETER_BASE_IP-CAN-TYPE_3GPP2', 4).
-define('DIAMETER_BASE_IP-CAN-TYPE_3GPP-EPS', 5).
-define('DIAMETER_BASE_IP-CAN-TYPE_NON-3GPP-EPS', 6).
-define('DIAMETER_BASE_RAT-TYPE_WLAN', 0).
-define('DIAMETER_BASE_RAT-TYPE_VIRTUAL', 1).
-define('DIAMETER_BASE_RAT-TYPE_UTRAN', 1000).
-define('DIAMETER_BASE_RAT-TYPE_GERAN', 1001).
-define('DIAMETER_BASE_RAT-TYPE_GAN', 1002).
-define('DIAMETER_BASE_RAT-TYPE_HSPA_EVOLUTION', 1003).
-define('DIAMETER_BASE_RAT-TYPE_EUTRAN', 1004).
-define('DIAMETER_BASE_RAT-TYPE_CDMA2000_1X', 2000).
-define('DIAMETER_BASE_RAT-TYPE_HRPD', 2001).
-define('DIAMETER_BASE_RAT-TYPE_UMB', 2002).
-define('DIAMETER_BASE_RAT-TYPE_EHRPD', 2003).
-define('DIAMETER_BASE_PACKET-FILTER-USAGE_UNKNOWN', 0).
-define('DIAMETER_BASE_PACKET-FILTER-USAGE_SEND_TO_UE', 1).
-define('DIAMETER_BASE_FLOW-DIRECTION_UNSPECIFIED', 0).
-define('DIAMETER_BASE_FLOW-DIRECTION_DOWNLINK', 1).
-define('DIAMETER_BASE_FLOW-DIRECTION_UPLINK', 2).
-define('DIAMETER_BASE_FLOW-DIRECTION_BIDIRECTIONAL', 3).
-define('DIAMETER_BASE_FLOW-STATUS_ENABLED-UPLINK', 0).
-define('DIAMETER_BASE_FLOW-STATUS_ENABLED-DOWNLINK', 1).
-define('DIAMETER_BASE_FLOW-STATUS_ENABLED', 2).
-define('DIAMETER_BASE_FLOW-STATUS_DISABLED', 3).
-define('DIAMETER_BASE_FLOW-STATUS_REMOVED', 4).
-define('DIAMETER_BASE_QOS-CLASS-IDENTIFIER_QCI_1', 1).
-define('DIAMETER_BASE_QOS-CLASS-IDENTIFIER_QCI_2', 2).
-define('DIAMETER_BASE_QOS-CLASS-IDENTIFIER_QCI_3', 3).
-define('DIAMETER_BASE_QOS-CLASS-IDENTIFIER_QCI_4', 4).
-define('DIAMETER_BASE_QOS-CLASS-IDENTIFIER_QCI_5', 5).
-define('DIAMETER_BASE_QOS-CLASS-IDENTIFIER_QCI_6', 6).
-define('DIAMETER_BASE_QOS-CLASS-IDENTIFIER_QCI_7', 7).
-define('DIAMETER_BASE_QOS-CLASS-IDENTIFIER_QCI_8', 8).
-define('DIAMETER_BASE_QOS-CLASS-IDENTIFIER_QCI_9', 9).
-define('DIAMETER_BASE_PRE-EMPTION-CAPABILITY_PRE-EMPTION_CAPABILITY_ENABLED', 0).
-define('DIAMETER_BASE_PRE-EMPTION-CAPABILITY_PRE-EMPTION_CAPABILITY_DISABLED', 1).
-define('DIAMETER_BASE_PRE-EMPTION-VULNERABILITY_PRE-EMPTION_VULNERABILITY_ENABLED', 0).
-define('DIAMETER_BASE_PRE-EMPTION-VULNERABILITY_PRE-EMPTION_VULNERABILITY_DISABLED', 1).
-define('DIAMETER_BASE_PS-TO-CS-SESSION-CONTINUITY_VIDEO_PS2CS_CONT_CANDIDATE', 0).
-define('DIAMETER_BASE_REPORTING-LEVEL_SERVICE_IDENTIFIER_LEVEL', 0).
-define('DIAMETER_BASE_REPORTING-LEVEL_RATING_GROUP_LEVEL', 1).
-define('DIAMETER_BASE_REPORTING-LEVEL_SPONSORED_CONNECTIVITY_LEVEL', 2).
-define('DIAMETER_BASE_ONLINE_DISABLE_ONLINE', 0).
-define('DIAMETER_BASE_ONLINE_ENABLE_ONLINE', 1).
-define('DIAMETER_BASE_OFFLINE_DISABLE_OFFLINE', 0).
-define('DIAMETER_BASE_OFFLINE_ENABLE_OFFLINE', 1).
-define('DIAMETER_BASE_METERING-METHOD_DURATION', 0).
-define('DIAMETER_BASE_METERING-METHOD_VOLUME', 1).
-define('DIAMETER_BASE_METERING-METHOD_DURATION_VOLUME', 2).
-define('DIAMETER_BASE_FINAL-UNIT-ACTION_TERMINATE', 0).
-define('DIAMETER_BASE_FINAL-UNIT-ACTION_REDIRECT', 1).
-define('DIAMETER_BASE_FINAL-UNIT-ACTION_RESTRICT_ACCESS', 2).
-define('DIAMETER_BASE_REDIRECT-SUPPORT_REDIRECTION_DISABLED', 0).
-define('DIAMETER_BASE_REDIRECT-SUPPORT_REDIRECTION_ENABLED', 1).
-define('DIAMETER_BASE_REDIRECT-ADDRESS-TYPE_IPV4_ADDRESS', 0).
-define('DIAMETER_BASE_REDIRECT-ADDRESS-TYPE_IPV6_ADDRESS', 1).
-define('DIAMETER_BASE_REDIRECT-ADDRESS-TYPE_URL', 2).
-define('DIAMETER_BASE_REDIRECT-ADDRESS-TYPE_SIP_URI', 3).
-define('DIAMETER_BASE_MUTE-NOTIFICATION_MUTE_REQUIRED', 0).
-define('DIAMETER_BASE_AF-SIGNALLING-PROTOCOL_NO_INFORMATION', 0).
-define('DIAMETER_BASE_AF-SIGNALLING-PROTOCOL_SIP', 1).
-define('DIAMETER_BASE_REQUIRED-ACCESS-INFO_USER_LOCATION', 0).
-define('DIAMETER_BASE_REQUIRED-ACCESS-INFO_MS_TIME_ZONE', 1).
-define('DIAMETER_BASE_RESOURCE-ALLOCATION-NOTIFICATION_ENABLE_NOTIFICATION', 0).
-define('DIAMETER_BASE_CHARGING-CORRELATION-INDICATOR_CHARGING_IDENTIFIER_REQUIRED', 0).
-define('DIAMETER_BASE_NETWORK-REQUEST-SUPPORT_NETWORK_REQUEST_NOT_SUPPORTED', 0).
-define('DIAMETER_BASE_NETWORK-REQUEST-SUPPORT_NETWORK_REQUEST_SUPPORTED', 1).
-define('DIAMETER_BASE_PACKET-FILTER-OPERATION_DELETION', 0).
-define('DIAMETER_BASE_PACKET-FILTER-OPERATION_ADDITION', 1).
-define('DIAMETER_BASE_PACKET-FILTER-OPERATION_MODIFICATION', 2).
-define('DIAMETER_BASE_BEARER-OPERATION_TERMINATION', 0).
-define('DIAMETER_BASE_BEARER-OPERATION_ESTABLISHMENT', 1).
-define('DIAMETER_BASE_BEARER-OPERATION_MODIFICATION', 2).
-define('DIAMETER_BASE_USER-EQUIPMENT-INFO-TYPE_IMEISV', 0).
-define('DIAMETER_BASE_USER-EQUIPMENT-INFO-TYPE_MAC', 1).
-define('DIAMETER_BASE_USER-EQUIPMENT-INFO-TYPE_EUI64', 2).
-define('DIAMETER_BASE_USER-EQUIPMENT-INFO-TYPE_MODIFIED_EUI64', 3).
-define('DIAMETER_BASE_QOS-NEGOTIATION_NO_QOS_NEGOTIATION', 0).
-define('DIAMETER_BASE_QOS-NEGOTIATION_QOS_NEGOTIATION_SUPPORTED', 1).
-define('DIAMETER_BASE_QOS-UPGRADE_QOS_UPGRADE_NOT_SUPPORTED', 0).
-define('DIAMETER_BASE_QOS-UPGRADE_QOS_UPGRADE_SUPPORTED', 1).
-define('DIAMETER_BASE_AN-GW-STATUS_AN_GW_FAILED', 0).
-define('DIAMETER_BASE_BEARER-USAGE_GENERAL', 0).
-define('DIAMETER_BASE_BEARER-USAGE_IMS_SIGNALLING', 1).
-define('DIAMETER_BASE_PCC-RULE-STATUS_ACTIVE', 0).
-define('DIAMETER_BASE_PCC-RULE-STATUS_INACTIVE', 1).
-define('DIAMETER_BASE_PCC-RULE-STATUS_TEMPORARILY_INACTIVE', 2).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_UNKNOWN_RULE_NAME', 1).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_RATING_GROUP_ERROR', 2).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_SERVICE_IDENTIFIER_ERROR', 3).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_GW_PCEF_MALFUNCTION', 4).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_RESOURCES_LIMITATION', 5).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_MAX_NR_BEARERS_REACHED', 6).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_UNKNOWN_BEARER_ID', 7).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_MISSING_BEARER_ID', 8).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_MISSING_FLOW_INFORMATION', 9).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_RESOURCE_ALLOCATION_FAILURE', 10).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_UNSUCCESSFUL_QOS_VALIDATION', 11).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_INCORRECT_FLOW_INFORMATION', 12).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_PS_TO_CS_HANDOVER', 13).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_TDF_APPLICATION_IDENTIFIER_ERROR', 14).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_NO_BEARER_BOUND', 15).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_FILTER_RESTRICTIONS', 16).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_AN_GW_FAILED', 17).
-define('DIAMETER_BASE_RULE-FAILURE-CODE_MISSING_REDIRECT_SERVER_ADDRESS', 18).
-define('DIAMETER_BASE_EVENT-TRIGGER_SGSN_CHANGE', 0).
-define('DIAMETER_BASE_EVENT-TRIGGER_QOS_CHANGE', 1).
-define('DIAMETER_BASE_EVENT-TRIGGER_RAT_CHANGE', 2).
-define('DIAMETER_BASE_EVENT-TRIGGER_TFT_CHANGE', 3).
-define('DIAMETER_BASE_EVENT-TRIGGER_PLMN_CHANGE', 4).
-define('DIAMETER_BASE_EVENT-TRIGGER_LOSS_OF_BEARER', 5).
-define('DIAMETER_BASE_EVENT-TRIGGER_RECOVERY_OF_BEARER', 6).
-define('DIAMETER_BASE_EVENT-TRIGGER_IP-CAN_CHANGE', 7).
-define('DIAMETER_BASE_EVENT-TRIGGER_QOS_CHANGE_EXCEEDING_AUTHORIZATION', 11).
-define('DIAMETER_BASE_EVENT-TRIGGER_RAI_CHANGE', 12).
-define('DIAMETER_BASE_EVENT-TRIGGER_USER_LOCATION_CHANGE', 13).
-define('DIAMETER_BASE_EVENT-TRIGGER_NO_EVENT_TRIGGERS', 14).
-define('DIAMETER_BASE_EVENT-TRIGGER_OUT_OF_CREDIT', 15).
-define('DIAMETER_BASE_EVENT-TRIGGER_REALLOCATION_OF_CREDIT', 16).
-define('DIAMETER_BASE_EVENT-TRIGGER_REVALIDATION_TIMEOUT', 17).
-define('DIAMETER_BASE_EVENT-TRIGGER_UE_IP_ADDRESS_ALLOCATE', 18).
-define('DIAMETER_BASE_EVENT-TRIGGER_UE_IP_ADDRESS_RELEASE', 19).
-define('DIAMETER_BASE_EVENT-TRIGGER_DEFAULT_EPS_BEARER_QOS_CHANGE', 20).
-define('DIAMETER_BASE_EVENT-TRIGGER_AN_GW_CHANGE', 21).
-define('DIAMETER_BASE_EVENT-TRIGGER_SUCCESSFUL_RESOURCE_ALLOCATION', 22).
-define('DIAMETER_BASE_EVENT-TRIGGER_RESOURCE_MODIFICATION_REQUEST', 23).
-define('DIAMETER_BASE_EVENT-TRIGGER_PGW_TRACE_CONTROL', 24).
-define('DIAMETER_BASE_EVENT-TRIGGER_UE_TIME_ZONE_CHANGE', 25).
-define('DIAMETER_BASE_EVENT-TRIGGER_TAI_CHANGE', 26).
-define('DIAMETER_BASE_EVENT-TRIGGER_ECGI_CHANGE', 27).
-define('DIAMETER_BASE_EVENT-TRIGGER_CHARGING_CORRELATION_EXCHANGE', 28).
-define('DIAMETER_BASE_EVENT-TRIGGER_APN-AMBR_MODIFICATION_FAILURE', 29).
-define('DIAMETER_BASE_EVENT-TRIGGER_USER_CSG_INFORMATION_CHANGE', 30).
-define('DIAMETER_BASE_EVENT-TRIGGER_USAGE_REPORT', 33).
-define('DIAMETER_BASE_EVENT-TRIGGER_DEFAULT-EPS-BEARER-QOS_MODIFICATION_FAILURE', 34).
-define('DIAMETER_BASE_EVENT-TRIGGER_USER_CSG_HYBRID_SUBSCRIBED_INFORMATION_CHANGE', 35).
-define('DIAMETER_BASE_EVENT-TRIGGER_USER_CSG_HYBRID_UNSUBSCRIBED_INFORMATION_CHANGE', 36).
-define('DIAMETER_BASE_EVENT-TRIGGER_ROUTING_RULE_CHANGE', 37).
-define('DIAMETER_BASE_EVENT-TRIGGER_APPLICATION_START', 39).
-define('DIAMETER_BASE_EVENT-TRIGGER_APPLICATION_STOP', 40).
-define('DIAMETER_BASE_EVENT-TRIGGER_CS_TO_PS_HANDOVER', 42).
-define('DIAMETER_BASE_EVENT-TRIGGER_UE_LOCAL_IP_ADDRESS_CHANGE', 43).
-define('DIAMETER_BASE_EVENT-TRIGGER_HE_NB_LOCAL_IP_ADDRESS_CHANGE', 44).
-define('DIAMETER_BASE_EVENT-TRIGGER_ACCESS_NETWORK_INFO_REPORT', 45).
-define('DIAMETER_BASE_TRACE-DEPTH_MINIMUM', 0).
-define('DIAMETER_BASE_TRACE-DEPTH_MEDIUM', 1).
-define('DIAMETER_BASE_TRACE-DEPTH_MAXIMUM', 2).
-define('DIAMETER_BASE_TRACE-DEPTH_MINIMUM_WITHOUT_VENDOR_SPECIFIC_EXTENSION', 3).
-define('DIAMETER_BASE_TRACE-DEPTH_MEDIUM_WITHOUT_VENDOR_SPECIFIC_EXTENSION', 4).
-define('DIAMETER_BASE_TRACE-DEPTH_MAXIMUM_WITHOUT_VENDOR_SPECIFIC_EXTENSION', 5).
-define('DIAMETER_BASE_TARIFF-CHANGE-USAGE_UNIT_BEFORE_TARIFF_CHANGE', 0).
-define('DIAMETER_BASE_TARIFF-CHANGE-USAGE_UNIT_AFTER_TARIFF_CHANGE', 1).
-define('DIAMETER_BASE_TARIFF-CHANGE-USAGE_UNIT_INDETERMINATE', 2).
-define('DIAMETER_BASE_USAGE-MONITORING-LEVEL_SESSION_LEVEL', 0).
-define('DIAMETER_BASE_USAGE-MONITORING-LEVEL_PCC_RULE_LEVEL', 1).
-define('DIAMETER_BASE_USAGE-MONITORING-LEVEL_ADC_RULE_LEVEL', 2).
-define('DIAMETER_BASE_USAGE-MONITORING-REPORT_USAGE_MONITORING_REPORT_REQUIRED', 0).
-define('DIAMETER_BASE_USAGE-MONITORING-SUPPORT_USAGE_MONITORING_DISABLED', 0).
-define('DIAMETER_BASE_CSG-ACCESS-MODE_CLOSED_MODE', 0).
-define('DIAMETER_BASE_CSG-ACCESS-MODE_HYBRID_MODE', 1).
-define('DIAMETER_BASE_CSG-MEMBERSHIP-INDICATION_NOT_CSG_MEMBER', 0).
-define('DIAMETER_BASE_CSG-MEMBERSHIP-INDICATION_CSG_MEMBER', 1).
-define('DIAMETER_BASE_BEARER-CONTROL-MODE_UE_ONLY', 0).
-define('DIAMETER_BASE_BEARER-CONTROL-MODE_RESERVED', 1).
-define('DIAMETER_BASE_BEARER-CONTROL-MODE_UE_NW', 2).
-define('DIAMETER_BASE_CSG-INFORMATION-REPORTING_CHANGE_CSG_CELL', 0).
-define('DIAMETER_BASE_CSG-INFORMATION-REPORTING_CHANGE_CSG_SUBSCRIBED_HYBRID_CELL', 1).
-define('DIAMETER_BASE_CSG-INFORMATION-REPORTING_CHANGE_CSG_UNSUBSCRIBED_HYBRID_CELL', 2).
-define('DIAMETER_BASE_SESSION-RELEASE-CAUSE_UNSPECIFIED_REASON', 0).
-define('DIAMETER_BASE_SESSION-RELEASE-CAUSE_UE_SUBSCRIPTION_REASON', 1).
-define('DIAMETER_BASE_SESSION-RELEASE-CAUSE_INSUFFICIENT_SERVER_RESOURCES', 2).
-define('DIAMETER_BASE_SESSION-RELEASE-CAUSE_IP_CAN_SESSION_TERMINATION', 3).
-define('DIAMETER_BASE_SESSION-RELEASE-CAUSE_UE_IP_ADDRESS_RELEASE', 4).



%%% -------------------------------------------------------
%%% DEFINE Macros:
%%% -------------------------------------------------------

-define('DIAMETER_BASE_RESULT-CODE_MULTI_ROUND_AUTH', 1001).
-define('DIAMETER_BASE_RESULT-CODE_SUCCESS', 2001).
-define('DIAMETER_BASE_RESULT-CODE_LIMITED_SUCCESS', 2002).
-define('DIAMETER_BASE_RESULT-CODE_COMMAND_UNSUPPORTED', 3001).
-define('DIAMETER_BASE_RESULT-CODE_UNABLE_TO_DELIVER', 3002).
-define('DIAMETER_BASE_RESULT-CODE_REALM_NOT_SERVED', 3003).
-define('DIAMETER_BASE_RESULT-CODE_TOO_BUSY', 3004).
-define('DIAMETER_BASE_RESULT-CODE_LOOP_DETECTED', 3005).
-define('DIAMETER_BASE_RESULT-CODE_REDIRECT_INDICATION', 3006).
-define('DIAMETER_BASE_RESULT-CODE_APPLICATION_UNSUPPORTED', 3007).
-define('DIAMETER_BASE_RESULT-CODE_INVALID_HDR_BITS', 3008).
-define('DIAMETER_BASE_RESULT-CODE_INVALID_AVP_BITS', 3009).
-define('DIAMETER_BASE_RESULT-CODE_UNKNOWN_PEER', 3010).
-define('DIAMETER_BASE_RESULT-CODE_AUTHENTICATION_REJECTED', 4001).
-define('DIAMETER_BASE_RESULT-CODE_OUT_OF_SPACE', 4002).
-define('DIAMETER_BASE_RESULT-CODE_ELECTION_LOST', 4003).
-define('DIAMETER_BASE_RESULT-CODE_AVP_UNSUPPORTED', 5001).
-define('DIAMETER_BASE_RESULT-CODE_UNKNOWN_SESSION_ID', 5002).
-define('DIAMETER_BASE_RESULT-CODE_AUTHORIZATION_REJECTED', 5003).
-define('DIAMETER_BASE_RESULT-CODE_INVALID_AVP_VALUE', 5004).
-define('DIAMETER_BASE_RESULT-CODE_MISSING_AVP', 5005).
-define('DIAMETER_BASE_RESULT-CODE_RESOURCES_EXCEEDED', 5006).
-define('DIAMETER_BASE_RESULT-CODE_CONTRADICTING_AVPS', 5007).
-define('DIAMETER_BASE_RESULT-CODE_AVP_NOT_ALLOWED', 5008).
-define('DIAMETER_BASE_RESULT-CODE_AVP_OCCURS_TOO_MANY_TIMES', 5009).
-define('DIAMETER_BASE_RESULT-CODE_NO_COMMON_APPLICATION', 5010).
-define('DIAMETER_BASE_RESULT-CODE_UNSUPPORTED_VERSION', 5011).
-define('DIAMETER_BASE_RESULT-CODE_UNABLE_TO_COMPLY', 5012).
-define('DIAMETER_BASE_RESULT-CODE_INVALID_BIT_IN_HEADER', 5013).
-define('DIAMETER_BASE_RESULT-CODE_INVALID_AVP_LENGTH', 5014).
-define('DIAMETER_BASE_RESULT-CODE_INVALID_MESSAGE_LENGTH', 5015).
-define('DIAMETER_BASE_RESULT-CODE_INVALID_AVP_BIT_COMBO', 5016).
-define('DIAMETER_BASE_RESULT-CODE_NO_COMMON_SECURITY', 5017).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_MULTI_ROUND_AUTH', 1001).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_SUCCESS', 2001).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_LIMITED_SUCCESS', 2002).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_COMMAND_UNSUPPORTED', 3001).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_UNABLE_TO_DELIVER', 3002).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_REALM_NOT_SERVED', 3003).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_TOO_BUSY', 3004).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_LOOP_DETECTED', 3005).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_REDIRECT_INDICATION', 3006).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_APPLICATION_UNSUPPORTED', 3007).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_INVALID_HDR_BITS', 3008).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_INVALID_AVP_BITS', 3009).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_UNKNOWN_PEER', 3010).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_AUTHENTICATION_REJECTED', 4001).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_OUT_OF_SPACE', 4002).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_ELECTION_LOST', 4003).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_AVP_UNSUPPORTED', 5001).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_UNKNOWN_SESSION_ID', 5002).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_AUTHORIZATION_REJECTED', 5003).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_INVALID_AVP_VALUE', 5004).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_MISSING_AVP', 5005).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_RESOURCES_EXCEEDED', 5006).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_CONTRADICTING_AVPS', 5007).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_AVP_NOT_ALLOWED', 5008).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_AVP_OCCURS_TOO_MANY_TIMES', 5009).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_NO_COMMON_APPLICATION', 5010).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_UNSUPPORTED_VERSION', 5011).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_UNABLE_TO_COMPLY', 5012).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_INVALID_BIT_IN_HEADER', 5013).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_INVALID_AVP_LENGTH', 5014).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_INVALID_MESSAGE_LENGTH', 5015).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_INVALID_AVP_BIT_COMBO', 5016).
-define('DIAMETER_BASE_RESULT-CODE_DIAMETER_NO_COMMON_SECURITY', 5017).
-define('DIAMETER_BASE_TERMINATION-CAUSE_DIAMETER_LOGOUT', 1).
-define('DIAMETER_BASE_TERMINATION-CAUSE_DIAMETER_SERVICE_NOT_PROVIDED', 2).
-define('DIAMETER_BASE_TERMINATION-CAUSE_DIAMETER_BAD_ANSWER', 3).
-define('DIAMETER_BASE_TERMINATION-CAUSE_DIAMETER_ADMINISTRATIVE', 4).
-define('DIAMETER_BASE_TERMINATION-CAUSE_DIAMETER_LINK_BROKEN', 5).
-define('DIAMETER_BASE_TERMINATION-CAUSE_DIAMETER_AUTH_EXPIRED', 6).
-define('DIAMETER_BASE_TERMINATION-CAUSE_DIAMETER_USER_MOVED', 7).
-define('DIAMETER_BASE_TERMINATION-CAUSE_DIAMETER_SESSION_TIMEOUT', 8).

