
# Terraform Module for Web Service Application Infrastructure

1. VPC - Create a vpc so that our application is isolated and secure

2. Subnets - Created two subnet in the above VPC Public and Private
 (i) Public subnet - In public subnet we have placed the Applicatio load balancer so that the load balancer can distribute the traffic from the outer world. Also created a target groups. Also Attached a NAT gateway with public subnet.
 (ii) Private Subnet - In private subnet we have deploed an EC2 instance and also attached a NAT gateway so that the Ec2 instance can be connected with the AWS services

3. Routing tables - There are two routing tables. Private and Public
3(i). Public routing table is connecting the public subnet with the internet gateway
3(ii). Private route table connecting the EC2 instance with the nat gateway

4. Security Group- Created two security groups one is for Load Balancer and the second one is for EC2
   In the Load Balancer Security group port 80 is opened because at the moment we don't have ssl/tls
   In the EC2 instance port 80 and 22 is opened so that we can ssh to out Ec2 instance

5. ASG - Implements an autoscaling group for the Ec2 instance which is present in the private subnet

6. Internet Gateway -> Routes the data between loacl network and internet

7. Nat Gateway -> Nat gateway will allow private network which is our EC2 instance to connect with the
   internet while the outside world cannot access our private networl

8. Load Balancer -> Deployed an Application load Balancer in the public subnet so that it can distribute the incoming traffic. For HTTP/HTTPS Application Load Balancer is general used. 
 
# To deploy the components using Terraform

1. Create a file named main.tf
2. Provide the aws Provider
3. Give the module name 
    ex -> module "module_name" {          
          source "./modules/vpc"
          vpc_cidr = var
4. Run the following commands
    terraform init -> To initialize a Terraform configuration
    terraform plan -> To view the resource which will be created
    terraform validate - > To check the syntax
    terraform apply --auto-approve -> To apply the changes on the cloud
