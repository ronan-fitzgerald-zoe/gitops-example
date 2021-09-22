render: ## Render your helm chart locally to check, usage: make render ENV=production
	helm dependency update helm
	helm template prometheus helm \
	--namespace monitoring \
		--include-crds \
		--values helm/values.yaml \
		--values helm/values-${ENV}.yaml \
		> ./rendered.yaml
