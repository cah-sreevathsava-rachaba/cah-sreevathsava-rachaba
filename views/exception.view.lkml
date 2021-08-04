view: exception {
  sql_table_name: `vndy-data-np-cah.l1_oncoemr_test.exception`
    ;;

  dimension: application_id {
    type: string
    sql: ${TABLE}.APPLICATION_ID ;;
  }

  dimension: attribute_value {
    type: string
    sql: ${TABLE}.ATTRIBUTE_VALUE ;;
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

  dimension: column_nm {
    type: string
    sql: ${TABLE}.COLUMN_NM ;;
  }

  dimension: data_source {
    type: string
    sql: ${TABLE}.DATA_SOURCE ;;
  }

  dimension: dq_category {
    type: string
    sql: ${TABLE}.DQ_CATEGORY ;;
  }

  dimension: error_description {
    type: string
    sql: ${TABLE}.ERROR_DESCRIPTION ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}.RECORD_ID ;;
  }

  dimension: run_date {
    type: string
    sql: ${TABLE}.RUN_DATE ;;
  }

  dimension: security_role_cd {
    type: string
    sql: ${TABLE}.SECURITY_ROLE_CD ;;
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.SEVERITY ;;
  }

  dimension: table_nm {
    type: string
    sql: ${TABLE}.TABLE_NM ;;
  }

  dimension: year_month_number {
    type: string
    sql: ${TABLE}.YEAR_MONTH_NUMBER ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
