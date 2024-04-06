```commandline
terraform init -backend-config=backend-dev.conf

terraform workspace new dev

terraform plan
terraform apply
terraform destroy
```

Mirror Providers
```commandline
terraform providers mirror provider-mirror
```
