package permit.custom

default allow := false

# You can find the official Rego tutorial at:
# https://www.openpolicyagent.org/docs/latest/policy-language/
# Example rule - you can replace this with something of your own
allow {
	data.custom.users.alice.roles[0] == "admin"
}
