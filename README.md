### Note
Make sure, what mtail working dir is /mtail

### Installing as a service

```
yes | cp -f /mtail/mtail.service /etc/systemd/system/
systemctl daemon-reload ; systemctl -f enable mtail.service ; systemctl start mtail
```

### Usage
https://github.com/google/mtail/wiki/Deploying

mtail runs an HTTP server on port 3903, which can be changed with the --port flag

```
curl localhost:3903/json
curl localhost:3903/metrics
```
