$TTL    604800
@       IN      SOA     okd4-services.goodyspace.com. admin.goodyspace.com. (
                  1     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800     ; Negative Cache TTL
)

; name servers - NS records
    IN      NS      okd4-services

; name servers - A records
okd4-services.goodyspace.com.          IN      A       192.168.253.210

; OpenShift Container Platform Cluster - A records
okd4-bootstrap.okd.goodyspace.com.        IN      A      192.168.253.200
okd4-control-plane-1.okd.goodyspace.com.        IN      A      192.168.253.201
okd4-control-plane-2.okd.goodyspace.com.         IN      A      192.168.253.202
okd4-control-plane-3.okd.goodyspace.com.         IN      A      192.168.253.203
okd4-compute-1.okd.goodyspace.com.        IN      A      192.168.253.204
okd4-compute-2.okd.goodyspace.com.        IN      A      192.168.253.205
okd4-compute-3.okd.goodyspace.com.        IN      A      192.168.253.206

; OpenShift internal cluster IPs - A records
api.okd.goodyspace.com.    IN    A    192.168.253.210
api-int.okd.goodyspace.com.    IN    A    192.168.253.210
*.apps.okd.goodyspace.com.    IN    A    192.168.253.210
etcd-0.okd.goodyspace.com.    IN    A     192.168.253.201
etcd-1.okd.goodyspace.com.    IN    A     192.168.253.202
etcd-2.okd.goodyspace.com.    IN    A    192.168.253.203
console-openshift-console.apps.okd.goodyspace.com.     IN     A     192.168.253.210
oauth-openshift.apps.okd.goodyspace.com.     IN     A     192.168.253.210

; OpenShift internal cluster IPs - SRV records
_etcd-server-ssl._tcp.okd.goodyspace.com.    86400     IN    SRV     0    10    2380    etcd-0.okd
_etcd-server-ssl._tcp.okd.goodyspace.com.    86400     IN    SRV     0    10    2380    etcd-1.okd
_etcd-server-ssl._tcp.okd.goodyspace.com.    86400     IN    SRV     0    10    2380    etcd-2.okd
