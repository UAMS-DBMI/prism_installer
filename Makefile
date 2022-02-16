default: apply

apply:
	kubectl apply --recursive --dry-run=client -f .
	@echo "Don't forget to create your secrets.yaml, see web/secret.example and coreapi/secret.example for format"

serve:
	@echo open: http://127.0.0.1:8080.nip.io/
	kubectl port-forward svc/web 8080:8080

status:
	kubectl get all -l prism
