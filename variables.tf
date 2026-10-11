variable "dataplex_entry_groups" {
  description = <<EOT
Map of dataplex_entry_groups, attributes below
Optional:
    - deletion_policy
    - description
    - display_name
    - entry_group_id
    - labels
    - location
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    deletion_policy = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    entry_group_id  = optional(string)
    labels          = optional(map(string))
    location        = optional(string)
    project         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

