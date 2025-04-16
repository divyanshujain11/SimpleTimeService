# ECS Fargate Deployment with FireLens Logging

This project sets up an **Amazon ECS Fargate** cluster running a service (`simpletimeservice`) alongside a `fluent-bit` sidecar container using **FireLens** for log forwarding to Kinesis Firehose. The infrastructure includes **ALB integration**, **CloudWatch alarms**, and **Auto Scaling** policies.

---

## 📦 Components

- **ECS Cluster**: `test`
- **Task Definition**: 2 containers (`simpletimeservice`, `fluent-bit`)
- **Load Balancer DNS**: `http://test-235224089.us-east-1.elb.amazonaws.com`
- **Auto Scaling**: Based on CPU and Memory (target: 75%)
- **Logging**:
  - `fluent-bit` logs to CloudWatch
  - `simpletimeservice` logs sent to Kinesis Firehose via FireLens

---

## 🚀 Setup Instructions

### 1. Prerequisites

- AWS CLI configured (`aws configure`)
- Terraform installed (>=1.0)
- IAM permissions to manage ECS, IAM, ALB, CloudWatch, Kinesis, etc.

### 2. Clone the Repository

```bash
git clone https://github.com/your-org/your-repo.git
cd your-repo
```

### 3. for github action
- **Add you bucket in backend.tf**
- **Add your creds in github  secret**

