# 🌟 Terraform Google Cloud Project 🌟
This project provides a comprehensive Terraform configuration for deploying a Google Cloud infrastructure, including a Virtual Private Cloud (VPC) network, a Google Kubernetes Engine (GKE) cluster, and an Artifact Registry repository. 
The project is designed to be flexible and customizable, with a variety of input variables that can be used to tailor the deployment to specific needs.

## 🚀 Features
* **VPC Network**: Creates a VPC network with customizable subnets, secondary ranges, and routes
* **GKE Cluster**: Deploys a GKE cluster with customizable node pools and cluster settings
* **Artifact Registry**: Creates an Artifact Registry repository for storing and managing container images
* **Customizable**: Input variables allow for customization of the deployment, including project ID, region, zones, and more
* **Modular**: Uses Terraform modules to organize and reuse code, making it easier to manage and maintain

## 🛠️ Tech Stack
* **Terraform**: Used for infrastructure as code (IaC) management
* **Google Cloud**: Provides the underlying cloud infrastructure, including VPC, GKE, and Artifact Registry
* **Google Cloud Provider**: Used to interact with Google Cloud services
* **Google Cloud Beta Provider**: Used to interact with beta Google Cloud services
* **Hashicorp**: Provides the Terraform and Google Cloud providers

## 📦 Installation
### Prerequisites
* **Terraform**: Install Terraform on your machine
* **Google Cloud Account**: Create a Google Cloud account and enable the necessary APIs
* **Google Cloud Credentials**: Set up Google Cloud credentials on your machine

### Setup Instructions
1. Clone the repository: `git clone https://github.com/firmansyw30/gke-cluster-prod-setup.git`
2. Navigate to the repository: `cd gke-cluster-prod-setup`
3. Initialize Terraform: `terraform init`
4. Apply the Terraform configuration: `terraform apply`

## 💻 Usage
* **Apply the Terraform configuration**: `terraform apply`
* **Destroy the Terraform configuration**: `terraform destroy`
* **View output values**: `terraform output`

## 📂 Project Structure
```
.
├── gke.tf
├── artifact-registry.tf
├── variables.tf
├── vpc.tf
├── provider.tf
├── outputs.tf
├── README.md
└── .gitignore
```

## 🤝 Contributing
Contributions are welcome! Please submit a pull request with your changes and a brief description of what you've added or fixed.

## 📝 License
This project is licensed under the Apache 2.0 license.

## 📬 Contact
For questions or issues, please contact us at [firmansyahwicaksono30@gmail.com](mailto:firmansyahwicaksono30@gmail.com).

## 💖 Thanks Message
Thanks for review & use my GKE Cluster setup project! I hope it helps you deploy your Google Cloud infrastructure with ease.

Best Regard : Firmansyah Wicaksono
