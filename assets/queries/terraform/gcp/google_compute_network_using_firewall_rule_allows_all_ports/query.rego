package Cx

import data.generic.common as common_lib
import data.generic.terraform as terra_lib

CxPolicy[result] {
	
	computeNetwork := input.document[i].resource.google_compute_network[name]
	
	firewall := input.document[_].resource.google_compute_firewall[_]

	terra_lib.matches(firewall.network, name)
	common_lib.is_ingress(firewall)
	all_ports(firewall.allow)
	
	result := {
		"documentId": input.document[i].id,
		"searchKey": sprintf("google_compute_network[%s]", [name]),
		"issueType": "IncorrectValue",
		"keyExpectedValue": sprintf("'google_compute_network[%s]' is not using a firewall rule that allows access to all ports", [name]),
		"keyActualValue": sprintf("'google_compute_network[%s]' is using a firewall rule that allows access to all ports", [name]),
		"searchLine": common_lib.build_search_line(["resource", "google_compute_network", name], []),
	}
}

all_ports(allow) {
	is_array(allow)
	allow[_].ports[0] == "0-65535"
} else {
	is_object(allow)
	allow.ports[0] == "0-65535"
}