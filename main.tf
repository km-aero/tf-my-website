resource "vercel_project" "my_website" {
  name      = var.project_name
  framework = "nextjs"

  git_repository = {
    type = "github"
    repo = "km-aero/my-website"
  }
}
