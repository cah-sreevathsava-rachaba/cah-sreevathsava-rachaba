view: temp_exception {
  sql_table_name: `vndy-data-np-cah.bq_temp.temp_exception`
    ;;

  dimension: application_id {
    type: string
    primary_key: yes
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
    sql: CASE
    WHEN ${TABLE}.DQ_CATEGORY='CODESET_LOOKUP' THEN 'CODESET LOOKUP'
    WHEN ${TABLE}.DQ_CATEGORY='DATE_STANDARDIZATION' THEN 'DATE STANDARDIZATION'
    WHEN ${TABLE}.DQ_CATEGORY='MPI_LOOKUP' THEN 'MP LOOKUP'
    WHEN ${TABLE}.DQ_CATEGORY='NULL_CHECK' THEN 'NULL CHECK'
    ELSE ${TABLE}.DQ_CATEGORY
    END ;;
    #sql: ${TABLE}.DQ_CATEGORY ;;
  }

  dimension: error_description {
    type: string
    sql: ${TABLE}.ERROR_DESCRIPTION ;;
  }

  dimension: record_id {
    type: string

    sql: ${TABLE}.RECORD_ID ;;
  }

  dimension_group: run_date {
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
    sql: upper(${TABLE}.TABLE_NM) ;;
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
  measure: total_record_id {
    type: sum
    sql: ${TABLE}.RECORD_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
