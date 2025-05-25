resource "vercel_project" "my_website" {
  name      = var.project_name
  framework = "nextjs"
}
