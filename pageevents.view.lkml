view: pageevents {
  sql_table_name: PENDO.PAGEEVENTS ;;

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."ACCOUNTID" ;;
  }

  dimension: app_id {
    type: string
    sql: ${TABLE}."APPID" ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}."DAY" ;;
  }

  dimension: num_events {
    type: string
    sql: ${TABLE}."NUMEVENTS" ;;
  }

  dimension: num_minutes {
    type: string
    sql: ${TABLE}."NUMMINUTES" ;;
  }

  dimension: page_id {
    type: string
    sql: ${TABLE}."PAGEID" ;;
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
    label: "Page Event Count"
    type: count
    drill_fields: [accounts.account_id, accounts.name, visitors.lastbrowsername, visitors.lastservername, visitors.visitor_id]
  }
}
