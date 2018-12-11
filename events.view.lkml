view: events {
  sql_table_name: PENDO.EVENTS ;;

  dimension: accountid {
    type: string
    sql: ${TABLE}."ACCOUNTID" ;;
  }

  dimension_group: day {
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
    sql: ${TABLE}."DAY" ;;
  }

  dimension: numevents {
    type: string
    sql: ${TABLE}."NUMEVENTS" ;;
  }

  measure: sum_numevents {
    label: "Sum of Number of Events"
    type: sum
    sql: ${TABLE}.NUMEVENTS ;;
    value_format_name: decimal_0
  }

  dimension: numminutes {
    type: string
    sql: ${TABLE}."NUMMINUTES" ;;
  }

  measure: sum_numminutes {
    label: "Sum of Number of Minutes"
    type: sum
    sql: ${TABLE}.NUMMINUTES ;;
    value_format_name: decimal_0
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: visitorid {
    type: string
    sql: ${TABLE}."VISITORID" ;;
  }

  measure: active_user {
    label: "Active User"
    type: count_distinct
    sql: CONCAT(${visitorid},${accountid}) ;;
    value_format_name: decimal_0
  }

  measure: active_account {
    label: "Active Account"
    type: count_distinct
    sql: ${accountid} ;;
    value_format_name: decimal_0
  }
}
