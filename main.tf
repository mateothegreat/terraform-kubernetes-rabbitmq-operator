resource "null_resource" "kubectl" {

    provisioner "local-exec" {

        command = "kubectl --insecure-skip-tls-verify=true --server=\"${ var.host }\" --token=\"${ var.token }\" delete -f ${ var.operator_url }; kubectl --insecure-skip-tls-verify=true --server=\"${ var.host }\" --token=\"${ var.token }\" apply -f ${ var.operator_url }"

    }

}
