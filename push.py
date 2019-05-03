from apnsclient import *

print "Now initializing session"
session = Session()
connection = session.get_connection("push_sandbox", cert_file="audidemo.pem")

print "Now initializing payload"
tokens = ["c94510f042714407f19a32d3a7851bc277ea38477a452d5a8fcd1ef40f788b40"]
msg = Message(tokens, payload="{\"aps\":{\"alert\":\"Launching..\"}}")

print "Now preparing to send"
srv = APNs(connection)
try:
	res = srv.send(msg)
except:
	print "Can't connect to APNs"
else:
	print "Else action"

print "ready"
