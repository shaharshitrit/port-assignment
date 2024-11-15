# port-assignment - Shahar Shitrit

# Kubernetes Architecture for Production

This repository contains the infrastructure and deployment configuration for a Kubernetes-based application environment, implemented using Terraform, GitHub Actions, and Kubernetes manifests. Below, we first describe the current architecture as deployed in this proof of concept (POC), followed by suggestions to evolve it into a production-ready environment.

---

## Current Architectural Solution

The current architecture leverages **Terraform** to provision and manage cloud resources, ensuring scalable, reliable, and consistent infrastructure. The Terraform configurations in the `terraform` folder define core network components like VPCs, subnets, and security groups, establishing a secure and structured network foundation. Public and private subnets isolate essential resources such as load balancers while securing internal services, following Infrastructure as Code (IaC) best practices for maintainability.

**GitHub Actions** workflows, located in `.github/workflows/`, automate CI/CD tasks by running tests, applying Terraform changes, and monitoring deployments. This setup reduces manual intervention, accelerating deployments and ensuring consistency. The Kubernetes manifests in the `manifests` directory are configured for application components, defining pods, services, and ingress rules that manage traffic and ensure service availability. Together, these tools enable a scalable and efficient deployment process suitable for a POC.

---

## Current Architecture Diagram
![Architecture Diagram](./port-assignment-architecture.jpg)

---

## Moving from POC to Production-Ready

To make this architecture production-ready, prioritize high availability, security, and autoscaling capabilities. Deploy resources across multiple availability zones and configure **AWS Application Load Balancer (ALB)** for SSL termination and secure traffic routing. For DNS management, integrate **Route 53** with public zones for customer-facing services and private zones for internal services. Automate DNS updates using **external-dns** to simplify record management as services change, and add **Horizontal Pod Autoscaler (HPA)** and **Karpenter** to dynamically adjust pod replicas and nodes based on real-time demand.

Enhance the CI/CD pipeline by using **assume-role** for AWS authentication to replace static access keys, and add a manual approval step before `terraform apply` to ensure changes are reviewed before deployment. Restrict access to internal services by configuring them on private subnets, limiting exposure to the internet only for components needing customer access. Additionally, configure **readiness and liveness probes** to improve application reliability by monitoring container health and ensuring only ready containers serve traffic.

For production use, further adjustments to the backend service are recommended: configure the application to run as a **non-root user** for improved security, replace the default load balancer with **ingress** for more flexible traffic management, and specify **hard-coded versions** in `requirements.txt` to ensure consistent dependencies. These adjustments, combined with the infrastructure enhancements, will make this architecture secure, scalable, and robust enough for production demands.

---

## Summary

By implementing these enhancements, this architecture will evolve into a production-ready solution, combining Terraform, ALB, Route 53, ArgoCD, HPA, Karpenter, and GitHub Actions to support a scalable, secure, and highly available Kubernetes deployment. These adjustments provide the foundation for a robust production environment, ready to handle high demand and support continuous, automated deployments.
