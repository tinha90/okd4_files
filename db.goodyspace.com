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
okd4-services.goodyspace.com.          IN      A       192.168.254.98

; OpenShift Container Platform Cluster - A records
okd4-bootstrap.openshift.goodyspace.com.        IN      A      192.168.1.200
okd4-control-plane-1.openshift.goodyspace.com.        IN      A      192.168.254.97
okd4-control-plane-2.openshift.goodyspace.com.         IN      A      192.168.254.96
okd4-control-plane-3.openshift.goodyspace.com.         IN      A      192.168.1.50
okd4-compute-1.openshift.goodyspace.com.        IN      A      192.168.254.95
okd4-compute-2.openshift.goodyspace.com.        IN      A      192.168.1.51

; OpenShift internal cluster IPs - A records
api.openshift.goodyspace.com.    IN    A    192.168.254.98
api-int.openshift.goodyspace.com.    IN    A    192.168.254.98
*.apps.openshift.goodyspace.com.    IN    A    192.168.254.98
etcd-0.openshift.goodyspace.com.    IN    A     192.168.254.97
etcd-1.openshift.goodyspace.com.    IN    A     192.168.254.96
etcd-2.openshift.goodyspace.com.    IN    A    192.168.1.50
console-openshift-console.apps.openshift.goodyspace.com.     IN     A     192.168.254.98
oauth-openshift.apps.openshift.goodyspace.com.     IN     A     192.168.254.98

; OpenShift internal cluster IPs - SRV records
_etcd-server-ssl._tcp.openshift.goodyspace.com.    86400     IN    SRV     0    10    2380    etcd-0.openshift
_etcd-server-ssl._tcp.openshift.goodyspace.com.    86400     IN    SRV     0    10    2380    etcd-1.openshift
_etcd-server-ssl._tcp.openshift.goodyspace.com.    86400     IN    SRV     0    10    2380    etcd-2.openshift

