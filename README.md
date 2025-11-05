# 🌍 Portfolio Deployment on AWS using Terraform & GitHub Actions

This repository contains a **static portfolio website (HTML, CSS, JavaScript)** deployed on **AWS EC2**.  
Infrastructure is provisioned using **Terraform**, and code is automatically deployed using **GitHub Actions** (CI/CD).


## 🚀 Project Architecture
Local Machine → GitHub → GitHub Actions → AWS EC2 → Nginx → Live Website

## Features 📋
⚡️ Fully Responsive\
⚡️ Valid HTML5 & CSS3\
⚡️ Typing animation using `Typed.js`\
⚡️ Easy to modify


## Sections 📚
✔️ About me\
✔️ Experience\
✔️ Projects \
✔️ Skills \
✔️ Education\
✔️ Contact Info\
✔️ Resume


| Component | Technology Used |
|----------|----------------|
| Cloud Provider | AWS |
| Compute | EC2 (Ubuntu Linux) |
| Web Server | Nginx |
| Infrastructure as Code | Terraform |
| CI/CD Pipeline | GitHub Actions |
| Source Code Version Control | Git + GitHub |

---

## 📦 Folder Structure

.
├── portfolio-infra/ # Terraform infrastructure files
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│
└── portfolio-site/ # Your HTML, CSS, JS files
├── index.html
├── styles.css
└── script.js

## Create IAM User for Terraform + GitHub Actions

Go to: AWS Console → IAM → Users → Create user

Give programmatic access + attach policy:
```bash
AmazonEC2FullAccess
AmazonVPCFullAccess
```

Copy Access Key ID and Secret Access Key.

Store in GitHub Actions Secrets later.

## Run Terraform

Export your AWS credentials:
```bash
export TF_VAR_aws_access_key="YOUR_KEY"
export TF_VAR_aws_secret_key="YOUR_SECRET"
export TF_VAR_key_name="YOUR_EC2_KEY_PAIR_NAME"
```

Then:
```bash
terraform init
terraform apply -auto-approve
```

```bash
server_ip = 18.222.150.11
```

## Connect to the EC2 Server (First Time Only)
```bash
ssh -i your_key.pem ubuntu@YOUR_PUBLIC_IP
sudo apt update && sudo apt install -y nginx
```
##Upload your portfolio manually once to verify:
```bash
sudo cp -r * /var/www/html
sudo systemctl restart nginx
```

## CI/CD Deployment (GitHub Actions)

The pipeline automatically:

- Uploads website files to EC2
- estarts Nginx

## Add Secrets in GitHub:
| Secret Name       | Value                       |
| ----------------- | --------------------------- |
| `SERVER_IP`       | EC2 Public IP               |
| `SSH_PRIVATE_KEY` | Contents of your `.pem` key |

## Visit Your Live Website

Visit Your Live Website