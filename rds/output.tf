
output "db_ip" {
 description = "The connection endpoint for the DB instance without the port"
 value     = element(split(":", aws_db_instance.db.endpoint), 0)
}