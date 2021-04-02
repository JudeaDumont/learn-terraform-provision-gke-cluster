gcloud auth activate-service-account --key-file=/Users/judeadumont/Downloads/terraform-gke-2-824bcef85495.json
gcloud config set project terraform-gke-2
kubectl config set-context gke_terraform-gke-0_us-central1_terraform-gke-0-gke

gcloud config get-value project

gcloud container clusters create example-cluster  --cloud-run-config=load-balancer-type=INTERNAL

gcloud auth application-default login

gcloud auth login judea.dumont@gfs.com

gcloud config set project gcp-gfs-naoo-app

gcloud auth login dumontjudea2@gmail.com

gcloud config set project terraform-gke-5
gcloud auth application-default login

kubectl apply -f hello-allow-from-foo.yaml

kubectl get netpol -n policy-demo

kubectl -n default delete networkpolicy foo-allow-to-hello

kubectl exec --stdin --tty 'terraform-example-1-859f7c576f-jv6gl' -- /bin/sh
kubectl exec --stdin --tty 'terraform-example-2-59d8b6fdc-7cbzs' -- /bin/sh


echo "Hello, World" > index.html
busybox httpd -f -p 8081

wget -qO- http://10.140.6.6:8081
wget -qO- http://10.140.5.5:8081



http://terraform-example-2-59d8b6fdc-7cbzs:8000



