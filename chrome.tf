
// Finally opening the browser to that particular html sites to see how It's working.

resource "null_resource" "ChromeOpen"  {
depends_on = [
    aws_instance.HttpdInstance,
  ]

	provisioner "local-exec" {
	    command = "chrome  ${aws_instance.HttpdInstance.public_ip}/anurag.html "
  	}
}