echo "Deployment of udagram project with Kubernetes(K8s)"
echo ""
echo "Launching deployment of feed pod ..."
kubectl apply -f udagram-api-feed/feed-deployment.yml
echo "Launching deployment of user pod ..."
kubectl apply -f udagram-api-user/user-deployment.yml
echo "Launching deployment of frontend pod ..."
kubectl apply -f udagram-frontend/frontend-deployment.yml
echo "Launching deployment of reverseproxy pod ..."
kubectl apply -f udagram-reverseproxy/reverseproxy-deployment.yml
echo "List of pods created ..."
echo ""
kubectl get pods
echo ""
echo "Launching deployment of feed service ..."
kubectl apply -f udagram-api-feed/feed-service.yml
echo "Launching deployment of user service ..."
kubectl apply -f udagram-api-user/user-service.yml
echo "Launching deployment of frontend service ..."
kubectl apply -f udagram-frontend/frontend-service.yml
echo "Launching deployment of reverseproxy service ..."
kubectl apply -f udagram-reverseproxy/reverseproxy-service.yml
echo ""

kubectl get services
echo ""
echo "Udagram project launched successfully :-)"
