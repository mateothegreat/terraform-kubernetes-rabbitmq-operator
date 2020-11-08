variable "host" {

    type        = string
    description = "kuberetes api url"

}

variable "token" {

    type        = string
    description = "kubernetes api token"

}

variable "operator_url" {

    type = string
    description = "url to the operator manifests (yaml file)"
    default = "https://github.com/rabbitmq/cluster-operator/releases/latest/download/cluster-operator.yml"

}
