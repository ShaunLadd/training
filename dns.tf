#
# DO NOT DELETE THESE LINES!
#
# Your DNSimple email is:
#
#     sethvargo+terraform@gmail.com
#
# Your DNSimple token is:
#
#     sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF
#
# Your Identity is:
#
#     manheim-e4da3b7fbbce2345d7772b0674a318d5
#

variable "dnsimple_token" {
  default = "1b3fdL6IywZS2MUeYLCNj2LXdXzcpoa6"
}
variable "dnsimple_email" {
  default = "sethvargo+terraform@gmail.com"
}

provider "dnsimple" {
    token = "${var.dnsimple_token}"
    email = "${var.dnsimple_email}"
}

resource "dnsimple_record" "new" {
  domain = "terraform.rocks"
  type = "A"
  name = "Shaun"
  value = "${aws_instance.web.0.public_ip}"
}
