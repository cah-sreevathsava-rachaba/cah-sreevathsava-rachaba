view: reconciliation {
  sql_table_name: `vndy-data-np-cah.l1_oncoemr_test.reconciliation`
    ;;

  dimension: application_id {
    type: string
    sql: ${TABLE}.APPLICATION_ID ;;
  }

  dimension: audit_last_update_id {
    type: string
    sql: ${TABLE}.AUDIT_LAST_UPDATE_ID ;;
  }

  dimension: audit_last_update_tm {
    type: string
    sql: ${TABLE}.AUDIT_LAST_UPDATE_TM ;;
  }

  dimension: audit_load_id {
    type: string
    sql: ${TABLE}.AUDIT_LOAD_ID ;;
  }

  dimension: audit_load_tm {
    type: string
    sql: ${TABLE}.AUDIT_LOAD_TM ;;
  }

  dimension: exceptions_high_sev {
    type: string
    sql: ${TABLE}.EXCEPTIONS_HIGH_SEV ;;
  }

  dimension: exceptions_low_sev {
    type: string
    sql: ${TABLE}.EXCEPTIONS_LOW_SEV ;;
  }

  dimension: exceptions_medium_sev {
    type: string
    sql: ${TABLE}.EXCEPTIONS_MEDIUM_SEV ;;
  }

  dimension: exceptions_total {
    type: string
    sql: ${TABLE}.EXCEPTIONS_TOTAL ;;
  }

  dimension: file_processed {
    type: string
    sql: ${TABLE}.FILE_PROCESSED ;;
  }

  dimension: run_date {
    type: string
    sql: ${TABLE}.RUN_DATE ;;
  }

  dimension: run_ts {
    type: string
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
    type: string
    sql: ${TABLE}.TOTAL_RECS_FAIL ;;
  }

  dimension: total_recs_processed {
    type: string
    sql: ${TABLE}.TOTAL_RECS_PROCESSED ;;
  }

  dimension: total_recs_success {
    type: string
    sql: ${TABLE}.TOTAL_RECS_SUCCESS ;;
  }

  dimension: year_month_number {
    type: string
    sql: ${TABLE}.YEAR_MONTH_NUMBER ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, source_name]
  }
}
