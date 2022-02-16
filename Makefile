default: apply

apply:
	kubectl apply --recursive --dry-run=client -f .
