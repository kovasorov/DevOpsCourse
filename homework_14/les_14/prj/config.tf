provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Create a container
resource "docker_container" "foo" {
  image = "${docker_image.nginx.latest}"
  name  = "foo"
  ports {
    internal = 80
    external = 80}
  }
resource "docker_image" "nginx" {
  name = "nginx:latest"
}
