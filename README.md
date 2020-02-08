#Pheme

A basic "message" container and monitoring API.

This allows distinct and disconnected parts of a App or API to generate small "messages" which can be picked up and used by other parts of the App or API.  It's different from the Notifications API as it's intention is meant more of diagnostics and logging, but differs from a logging API (in it's intention) as the messages are meant to be "user friendly" (or presentable)