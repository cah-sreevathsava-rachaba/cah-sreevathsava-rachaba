view: payer {
  sql_table_name: `APA_Data.payer`
    ;;
  drill_fields: [payer_id_pk]

  dimension: payer_id_pk {
    primary_key: yes
    type: number
    sql: ${TABLE}.payer_id_pk ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_date ;;
  }

  dimension: lineage_step_id {
    type: number
    sql: ${TABLE}.lineage_step_id ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_date ;;
  }

  dimension: payer_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.payer_id ;;
  }

  dimension: payer_name {
    type: string
    sql: ${TABLE}.payer_name ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  measure: count {
    type: count
    drill_fields: [payer_id_pk, payer_name, payer.payer_name, payer.payer_id_pk, payer.count]
  }
}
