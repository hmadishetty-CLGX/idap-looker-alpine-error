
view: __view_reid_client_migration_alpine_errors {

  derived_table: {
    sql:
    -- REID - reid_idap_looker_alpine_error

    --SELECT date_added, job_id, request_number, job_runtime, job_runtime_id, function_name,
    --user_name, inet_client_addr, function_call, "sql", failed_sql, step, error_message, error_state
    --FROM prodtracking.alpine_error order by JOB_RUNTIME desc;
    select
         date_added
    ,    job_id
    ,    request_number
    ,    function_name
    ,    user_name
    ,    inet_client_addr
    ,    function_call
    ,    sql
    ,    failed_sql
    ,    step
    ,    error_message
    ,    error_state
    ,    job_runtime
    ,    job_runtime_id
    from prodtracking.alpine_error
    where date_added >= current_date - interval '60 hours'
    order by date_added desc
;;  }

      dimension: date_added {
        type: date_time
        sql: ${TABLE}.date_added ;;
      }

      dimension: job_id{
        type: number
        sql: ${TABLE}.job_id ;;
      }

      dimension: request_number{
        type: string
        sql: ${TABLE}.request_number ;;
      }

      dimension: function_name{
        type: string
        sql: ${TABLE}.function_name ;;
      }

      dimension: user_name {
        type: string
        sql: ${TABLE}.user_name ;;
      }

      dimension: inet_client_addr {
        type: string
        sql: ${TABLE}.inet_client_addr ;;
      }

      dimension: function_call {
        type: string
        sql: ${TABLE}.function_call ;;
      }

      dimension: sql {
        type: string
        sql: ${TABLE}.sql ;;
      }

      dimension: failed_sql  {
        type: string
        sql: ${TABLE}.failed_sql ;;
      }

      dimension: step  {
        type: string
        sql: ${TABLE}.step ;;
      }

      dimension: error_message  {
        type: string
        sql: ${TABLE}.error_message ;;
      }

      dimension: error_state  {
        type: string
        sql: ${TABLE}.error_state ;;
      }

      dimension: job_runtime {
        type: string #date_time
        sql: ${TABLE}.job_runtime ;;
      }

      dimension: job_runtime_id {
        type: string
        sql: ${TABLE}.job_runtime_id ;;
      }


    } #END
