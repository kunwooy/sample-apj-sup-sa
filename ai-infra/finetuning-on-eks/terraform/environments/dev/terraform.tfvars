# Development Environment Configuration

region = "us-west-2"
name   = "genai-eks-dev"

# GPU Node Configuration
# g5 family (A10G GPUs):
#   g5.xlarge: 1x A10G (24GB), 4 vCPU, 16 GB RAM
#   g5.2xlarge: 1x A10G (24GB), 8 vCPU, 32 GB RAM
#   g5.12xlarge: 4x A10G (96GB total), 48 vCPU, 192 GB RAM
# g6e family (L40S GPUs - better for VLMs):
#   g6e.xlarge: 1x L40S (48GB), 4 vCPU, 32 GB RAM
#   g6e.2xlarge: 1x L40S (48GB), 8 vCPU, 64 GB RAM
#   g6e.12xlarge: 4x L40S (192GB total), 48 vCPU, 384 GB RAM

gpu_instance_types = ["g5.xlarge", "g5.2xlarge", "g5.12xlarge", "g6e.xlarge", "g6e.2xlarge", "g6e.12xlarge"]
gpu_min_size       = 0                 # Scale to zero when not in use (only used if Karpenter disabled)
gpu_max_size       = 2                 # Maximum nodes for cost control (only used if Karpenter disabled)
gpu_desired_size   = 0                 # Start with 0, scale up for training jobs (only used if Karpenter disabled)

# CNI and Node Provisioning
enable_cilium    = false  # Disabled - using AWS VPC CNI only
enable_karpenter = true   # Enable Karpenter for dynamic node provisioning (replaces managed node group)
