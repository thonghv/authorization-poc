package permit.custom

default allow := false

# You can find the official Rego tutorial at:
# https://www.openpolicyagent.org/docs/latest/policy-language/
# Example rule - you can replace this with something of your own
allow {
	user_is_admin
}

user_is_admin {
	 # for some `i`...
	 some i

 	# "admin" is the `i`-th element in the user->role mappings for the identified user.
 	data.users[input.user.key].roles[i] == "admin"
}

# Also, you can add more allow blocks here to get an OR effect
# allow {
#     # i.e if you add my_custom_rule here - the policy will allow
#     # if my_custom_rule is true, EVEN IF policies.allow is false.
#     my_custom_rule
# }

