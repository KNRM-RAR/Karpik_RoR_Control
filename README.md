# Karpik_RoR_Control
Made by @p137dev at AGHacks 2015 hackathon to interface between a web browser/smartphone app and the motor control Python script.
Requirements for running:
Installed RVM (from rvm.io)
Installed via RVM: Ruby 2.2.3 or newer, Rails 4.2.4

Launching the server: run KarpikEmbeddedServer
rails s -b *local_IP_here* -p *port*

HTTP requests for steering: http://*local_IP*:*port*/steering?left=0&right=0&left_pwr=0&right_pwr=0
where: left, right = 0 or 1, left_pwr, right_pwr = 0 ... 100