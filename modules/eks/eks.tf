module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "19.15.1"

  cluster_name = var.cluster_name
  cluster_endpoint_public_access = true

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

  vpc_id = var.vpc_id
  subnet_ids = var.subnet_ids

  eks_managed_node_group_defaults = {
    ami_type = var.ami_type
    instance_types = [var.instance_type]

    attach_cluster_primary_security_group = true
  }

  eks_managed_node_groups = {
    tradition-cluster-wg = {
      min_size = 2
      max_size = 2
      desired_size = 2

      capacity_type = "SPOT"
    }
  }
}
