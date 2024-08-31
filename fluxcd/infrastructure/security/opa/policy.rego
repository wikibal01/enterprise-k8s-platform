package kubernetes.admission

deny[msg] {
  input.request.kind.kind == "Pod"
  image := input.request.object.spec.containers[_].image
  not startswith(image, "your-approved-registry.com")
  msg := sprintf("Container image %s is not from an approved registry", [image])
}
