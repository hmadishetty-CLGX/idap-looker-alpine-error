connection: "looker-doc-prodtracking"

# include all the views
include: "*.view"

datagroup: reid_idap_looker_alpine_error_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: reid_idap_looker_alpine_error_default_datagroup

explore: alpine_error {}

explore: job_status_archive {}
