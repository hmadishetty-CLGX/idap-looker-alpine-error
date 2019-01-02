
view: __view_reid_client_migration_Greenplumb_errors {

  derived_table: {
    sql:
    -- REID - reid_idap_looker_alpine_error

SELECT
      executionid,
      type,
      stepname,
      MAX(CASE WHEN state = 'End' THEN status END) AS status,
      MAX(CASE WHEN state = 'Start' THEN dateadded END) AS start_date,
      MAX(CASE WHEN state = 'End' THEN dateadded END) AS end_date,
      CAST(EXTRACT(EPOCH FROM (MAX(CASE WHEN state = 'End' THEN dateadded END) - MAX(CASE WHEN state = 'Start' THEN dateadded END))) AS BIGINT) as seconds
FROM prodtracking.job_status_archive
GROUP BY executionid, type, stepname
ORDER BY executionid DESC, start_date desc, end_date asc, seconds desc


;;  }

      dimension: executionid {
        type: date_time
        sql: ${TABLE}.executionid ;;
      }

      dimension: type{
        type: string
        sql: ${TABLE}.type ;;
      }

      dimension: stepname{
        type: string
        sql: ${TABLE}.stepname ;;
      }

      dimension: status{
        type: string
        sql: ${TABLE}.status ;;
      }

      dimension: start_date {
        type: date_time
        sql: ${TABLE}.start_date ;;
      }

      dimension: end_date {
        type: date_time
        sql: ${TABLE}.end_date ;;
      }

      dimension: seconds {
        type: number
        sql: ${TABLE}.seconds ;;
      }



    } #END
