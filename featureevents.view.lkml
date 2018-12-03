view: featureevents {
  sql_table_name: PENDO.FEATUREEVENTS ;;

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."ACCOUNTID" ;;
  }

  dimension: app_id {
    type: string
    sql: ${TABLE}."APPID" ;;
  }

  dimension_group: day {
    label: "Feature Visit Day"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year,
      day_of_week
    ]
    sql: ${TABLE}."DAY" ;;
  }

  dimension: feature_id {
    type: string
    sql: ${TABLE}."FEATUREID" ;;
  }

  dimension: num_events {
    type: string
    sql: ${TABLE}."NUMEVENTS" ;;
  }

  dimension: num_minutes {
    type: string
    sql: ${TABLE}."NUMMINUTES" ;;
  }

  dimension: remote_ip {
    type: string
    sql: ${TABLE}."REMOTEIP" ;;
  }

  dimension: server {
    type: string
    sql: ${TABLE}."SERVER" ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}."USERAGENT" ;;
  }

  dimension: visitor_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."VISITORID" ;;
  }

  measure: count {
    label: "Feature Event Count"
    type: count
    drill_fields: [accounts.account_id, accounts.name, visitors.lastbrowsername, visitors.lastservername, visitors.visitor_id]
  }
}
