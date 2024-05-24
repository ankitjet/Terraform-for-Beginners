
# resource "aws_vpc" "main" {

#   cidr_block                       = "10.0.0.0/16"
#   instance_tenancy                 = "default"
#   enable_dns_hostnames             = true
#   assign_generated_ipv6_cidr_block = true

#   tags = {
#     Name = "my-vpc"
#   }
# }

# resource "aws_subnet" "public" {
#   vpc_id                  = aws_vpc.main.id
#   cidr_block              = "10.0.1.0/24"
#   availability_zone       = "us-east-1a"
#   map_public_ip_on_launch = true

#   tags = {
#     Name = "my-public-subnet"
#   }
# }

# resource "aws_internet_gateway" "main" {
#   vpc_id = aws_vpc.main.id

#   tags = {
#     Name = "my-internet-gateway"
#   }
# }

# resource "aws_route_table" "public" {
#   vpc_id = aws_vpc.main.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.main.id
#   }

#   tags = {
#     Name = "my-public-route-table"
#   }
# }

# resource "aws_route_table_association" "public" {
#   subnet_id      = aws_subnet.public.id
#   route_table_id = aws_route_table.public.id
# }

# # resource "aws_security_group" "allow_ssh" {
# #   name   = "allow_ssh"
# #   vpc_id = aws_vpc.main.id

# #   ingress {
# #     from_port   = 22
# #     to_port     = 22
# #     protocol    = "tcp"
# #     cidr_blocks = ["0.0.0.0/0"]
# #   }

# #   egress {
# #     from_port   = 0
# #     to_port     = 0
# #     protocol    = "-1"
# #     cidr_blocks = ["0.0.0.0/0"]
# #   }
# # }