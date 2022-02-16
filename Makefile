default: apply

apply:
	kubectl apply --recursive --dry-run=client -f .

serve:
	@echo open: http://127.0.0.1:8080.nip.io/
	kubectl port-forward svc/web 8080:8080

status:
	kubectl get all -l prism
