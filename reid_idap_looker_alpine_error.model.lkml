connection: "looker-doc-prodtracking"

# include all the views
include: "*.view"

#Added
#include: "*.dashboard.lookml"
# include all dashboards in this project

datagroup: reid_idap_looker_alpine_error_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: reid_idap_looker_alpine_error_default_datagroup

explore: alpine_error {}

explore: job_status_archive {}


##############################


# Create an explorable item based on the "__view_REID_client_migration_Running" view
explore: __view_reid_client_migration_alpine_errors {

# Give the explore a user-friendly name in the Explore menu
  label: "REID Alpine Errors"
}
