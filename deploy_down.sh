echo "Deleting ressources of udagram project with Kubernetes(K8s)"

kubectl delete deploy feed
kubectl delete service backend-feed
kubectl delete deploy user
kubectl delete service backend-user
kubectl delete deploy frontend
kubectl delete service frontend
kubectl delete deploy reverseproxy
kubectl delete service reverseproxy
echo ""
echo "All ressources have been deleted successfully !" 