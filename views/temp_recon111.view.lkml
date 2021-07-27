view: temp_recon111 {
  sql_table_name: `vndy-data-np-cah.bq_temp.temp_recon`
    ;;

  dimension: application_id {
    type: string
    sql: ${TABLE}.APPLICATION_ID ;;
  }

  dimension: audit_last_update_id {
    type: string
    sql: ${TABLE}.AUDIT_LAST_UPDATE_ID ;;
  }

  dimension_group: audit_last_update_tm {
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
    sql: ${TABLE}.AUDIT_LAST_UPDATE_TM ;;
  }

  dimension: audit_load_id {
    type: string
    sql: ${TABLE}.AUDIT_LOAD_ID ;;
  }

  dimension_group: audit_load_tm {
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
    sql: ${TABLE}.AUDIT_LOAD_TM ;;
  }

  dimension: exceptions_high_sev {
    type: number
    sql: ${TABLE}.EXCEPTIONS_HIGH_SEV ;;
  }

  dimension: exceptions_low_sev {
    type: number
    sql: ${TABLE}.EXCEPTIONS_LOW_SEV ;;
  }

  dimension: exceptions_medium_sev {
    type: number
    sql: ${TABLE}.EXCEPTIONS_MEDIUM_SEV ;;
  }

  measure: exceptions_total {
    type: sum
      sql: ${TABLE}.EXCEPTIONS_TOTAL ;;
  }

  dimension: file_processed {
    type: number
    sql: ${TABLE}.FILE_PROCESSED ;;
  }

  dimension_group: run {
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
    sql: ${TABLE}.RUN_DATE ;;
  }

  dimension_group: run_ts {
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
    sql: ${TABLE}.RUN_TS ;;
  }

  dimension: security_role_cd {
    type: string
    sql: ${TABLE}.SECURITY_ROLE_CD ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.SOURCE_NAME ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  dimension: total_recs_fail {
    type: number
    sql: ${TABLE}.TOTAL_RECS_FAIL ;;
  }

  dimension: total_recs_processed {
    type: number
    sql: ${TABLE}.TOTAL_RECS_PROCESSED ;;
  }

  dimension: total_recs_success {
    type: number
    sql: ${TABLE}.TOTAL_RECS_SUCCESS ;;
  }

  dimension_group: year_month_number {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.YEAR_MONTH_NUMBER ;;
  }

  measure: count {
    type: count_distinct
    drill_fields: [table_name, source_name]
  }
}
