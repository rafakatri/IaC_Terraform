
output "db_security_group" {
 value = aws_security_group.db.id
}

output "sub_private" {
 value = [aws_subnet.sub_private.id, aws_subnet.sub_db_2.id]
}