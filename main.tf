resource "vercel_project" "my_website" {
  name                       = var.project_name
  framework                  = "nextjs"
  auto_assign_custom_domains = false

  git_repository = {
    type              = "github"
    repo              = "km-aero/my-website"
    production_branch = "main"
  }
}

resource "vercel_project_domain" "main" {
  project_id           = vercel_project.my_website.id
  domain               = "kbmm.cloud"
  redirect             = vercel_project_domain.www_main.domain
  redirect_status_code = 307
}

resource "vercel_project_domain" "www_main" {
  project_id = vercel_project.my_website.id
  domain     = "www.kbmm.cloud"
}
