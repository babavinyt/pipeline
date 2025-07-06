variable "subnets" {
  type = list(object({
    name             = string
    address_prefixes = string
  }))

  default = [
    {
      name             = "subnet1"
      address_prefixes = "10.0.1.0/24"
    },
    {
      name             = "subnet2"
      address_prefixes = "10.0.2.0/24"
    },
    {
      name             = "subnet3"
      address_prefixes = "10.0.3.0/24"
    },
    {
      name             = "subnet4"
      address_prefixes = "10.0.4.0/24"
    }
  ]
}
