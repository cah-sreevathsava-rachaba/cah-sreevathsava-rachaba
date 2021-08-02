view: temp_recon {
  sql_table_name: `vndy-data-np-cah.bq_temp.temp_recon`
    ;;

  dimension: application_id {
    type: string
    primary_key: yes
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

  measure: exceptions_high_sev {
    type: sum
    sql: ${TABLE}.EXCEPTIONS_HIGH_SEV ;;
    drill_fields: [source_name,exceptions_total,exceptions_high_sev,exceptions_medium_sev,exceptions_low_sev]
  }

  measure: exceptions_low_sev {
    type: sum
    sql: ${TABLE}.EXCEPTIONS_LOW_SEV ;;
    drill_fields: [source_name,exceptions_total,exceptions_high_sev,exceptions_medium_sev,exceptions_low_sev]
  }

  measure: exceptions_medium_sev {
    type: sum
    sql: ${TABLE}.EXCEPTIONS_MEDIUM_SEV ;;
    drill_fields: [source_name,exceptions_total,exceptions_high_sev,exceptions_medium_sev,exceptions_low_sev]
  }

  measure: exceptions_total {
    type: sum
    sql: ${TABLE}.EXCEPTIONS_TOTAL ;;
    drill_fields: [source_name,exceptions_total,exceptions_high_sev,exceptions_medium_sev,exceptions_low_sev]
  }
  dimension: file_processed {
    type: number
    sql: ${TABLE}.FILE_PROCESSED ;;
  }

  dimension_group: run_date {
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
    html: <a href = "https://caretracker-looker-dev.cardinalhealth.net:9999/dashboards-next/63?PRACTICES={{ value }}&PROCESSED+DATE={{_filters['temp_recon.audit_load_tm_date']| url_encode }}" target="_self" >{{value}}</a> ;;
    #link: {
    #  label: "dashboard test"
    #url: "https://caretracker-looker-dev.cardinalhealth.net:9999/dashboards-next/63?PRACTICES={{ value }}"
   # url: "https://caretracker-looker-dev.cardinalhealth.net:9999/dashboards-next/63?PRACTICES={{ value }}&PROCESSED+DATE={{_filters['temp_recon.audit_load_tm_date']| url_encode }}"

    #  }
  }

  dimension: table_name {
    type: string
    sql: upper(${TABLE}.TABLE_NAME) ;;
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

  measure: total_recs_fail {
    type: sum
    sql: ${TABLE}.TOTAL_RECS_FAIL ;;
    drill_fields: [application_id,source_name,table_name,file_processed,total_recs_processed,total_recs_success,total_recs_fail,exceptions_total,exceptions_high_sev,exceptions_medium_sev,exceptions_low_sev,run_ts_date,security_role_cd]
  }

  measure: total_recs_processed {
    type: sum
    sql: ${TABLE}.TOTAL_RECS_PROCESSED ;;
  }

  measure: total_recs_success {
    type: sum
    sql: ${TABLE}.TOTAL_RECS_SUCCESS ;;
    #drill_fields: [application_id,source_name,table_name,file_processed,total_recs_processed,total_recs_success,total_recs_fail,run_ts_date,security_role_cd]
    link: {
      url: "https://caretracker-looker-dev.cardinalhealth.net:9999/dashboards-next/63?DATA+QUALITY={{ value }}&SEVERITY={{ value }}&PRACTICES={{ value }}&PROCESSED+DATE={{ value }}"
        }
  }

  measure: count {
    type: count_distinct
    drill_fields: [table_name, source_name]
  }


}
