# Summary
How to scale K8s deployments with KEDA.

## Prerequisites

- [Kind](https://kind.sigs.k8s.io/)

## Running the example

1. Create a Kind cluster:

```bash
kind create cluster
```

2. Install KEDA and Metrics Server:

```bash
kubectl apply -k . --server-side=true
```

## References

- [NSQ Design](https://nsq.io/overview/design.html)
