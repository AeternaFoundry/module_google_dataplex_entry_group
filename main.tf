resource "google_dataplex_entry_group" "dataplex_entry_groups" {
  for_each = var.dataplex_entry_groups

  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  display_name    = each.value.display_name
  entry_group_id  = each.value.entry_group_id
  labels          = each.value.labels
  location        = each.value.location
  project         = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

