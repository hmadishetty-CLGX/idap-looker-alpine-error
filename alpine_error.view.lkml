view: alpine_error {
  sql_table_name: prodtracking.alpine_error ;;

  dimension_group: date_added {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_added ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.error_message ;;
  }

  dimension: error_state {
    type: string
    sql: ${TABLE}.error_state ;;
  }

  dimension: failed_sql {
    type: string
    sql: ${TABLE}.failed_sql ;;
  }

  dimension: function_call {
    type: string
    sql: ${TABLE}.function_call ;;
  }

  dimension: function_name {
    type: string
    sql: ${TABLE}.function_name ;;
  }

  dimension: inet_client_addr {
    type: string
    sql: ${TABLE}.inet_client_addr ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_runtime {
    type: string
    sql: ${TABLE}.job_runtime ;;
  }

  dimension: job_runtime_id {
    type: string
    sql: ${TABLE}.job_runtime_id ;;
  }

  dimension: request_number {
    type: string
    sql: ${TABLE}.request_number ;;
  }

  dimension: sql {
    type: string
    sql: ${TABLE}.sql ;;
  }

  dimension: step {
    type: string
    sql: ${TABLE}.step ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  measure: count {
    type: count
    drill_fields: [function_name, user_name]
  }
}
