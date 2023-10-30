package permit.custom

default allow := true

# You can find the official Rego tutorial at:
# https://www.openpolicyagent.org/docs/latest/policy-language/
# Example rule - you can replace this with something of your own
allow {
	data.custom.organizations[0].id == "TELADOC"
}
