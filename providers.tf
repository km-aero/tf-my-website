terraform {
  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "3.3.0"
    }
  }

  required_version = "1.9.1"
}

provider "vercel" {
  # Default team for all resources
  team = "team_bb17IuPTzeAIyhs5J8FcrJrV"
}