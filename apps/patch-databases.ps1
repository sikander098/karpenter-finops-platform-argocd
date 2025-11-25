# Scripts to force Databases to On-Demand (Critical) Nodes
# Run this after 'helm install'

kubectl patch deployment valkey-cart -n astronomy --type='merge' -p '{\"spec\":{\"template\":{\"spec\":{\"nodeSelector\":{\"tier\":\"critical\"}}}}}'
kubectl patch deployment postgresql -n astronomy --type='merge' -p '{\"spec\":{\"template\":{\"spec\":{\"nodeSelector\":{\"tier\":\"critical\"}}}}}'
kubectl patch deployment kafka -n astronomy --type='merge' -p '{\"spec\":{\"template\":{\"spec\":{\"nodeSelector\":{\"tier\":\"critical\"}}}}}'
kubectl patch statefulset opensearch -n astronomy --type='merge' -p '{\"spec\":{\"template\":{\"spec\":{\"nodeSelector\":{\"tier\":\"critical\"}}}}}'
