view: featureevents {
  label: "Feature Events"
  sql_table_name: PENDO.FEATUREEVENTS ;;

  dimension: account_id {
    label: "Account ID"
    type: string
    # hidden: yes
    sql: ${TABLE}."ACCOUNTID" ;;
  }

  dimension: app_id {
    label: "App ID"
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
    label: "Feature ID"
    type: string
    sql: ${TABLE}."FEATUREID" ;;
  }

  dimension: num_events {
    label: "Number of Feature Events"
    type: string
    sql: ${TABLE}."NUMEVENTS" ;;
  }

  dimension: num_minutes {
    label: "Number of Feature Minutes"
    type: string
    sql: ${TABLE}."NUMMINUTES" ;;
  }

  dimension: remote_ip {
    label: "Remote IP Address"
    type: string
    sql: ${TABLE}."REMOTEIP" ;;
  }

  dimension: server {
    label: "Server"
    type: string
    sql: ${TABLE}."SERVER" ;;
  }

  dimension: user_agent {
    label: "User Agent"
    type: string
    sql: ${TABLE}."USERAGENT" ;;
  }

  dimension: visitor_id {
    label: "Visitor ID"
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
