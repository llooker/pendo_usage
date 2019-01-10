view: visitors {
  label: "Visitors"
  sql_table_name: PENDO.VISITORS ;;

  dimension: visitor_id {
    primary_key: yes
    label: "Visitor ID"
    type: string
    sql: ${TABLE}."VISITORID" ;;
  }

  dimension: accountid {
    label: "Account ID"
    type: string
    # hidden: yes
    sql: ${TABLE}."ACCOUNTID" ;;
  }

  dimension_group: firstvisit {
    label: "First Visit"
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
    sql: ${TABLE}."FIRSTVISIT" ;;
  }

  dimension: lastbrowsername {
    label: "Last Browser Name"
    type: string
    sql: ${TABLE}."LASTBROWSERNAME" ;;
  }

  dimension: lastbrowserversion {
    label: "Last Browser Version"
    type: string
    sql: ${TABLE}."LASTBROWSERVERSION" ;;
  }

  dimension: lastoperatingsystem {
    label: "Last Operating System"
    type: string
    sql: ${TABLE}."LASTOPERATINGSYSTEM" ;;
  }

  dimension: lastservername {
    label: "Last Server Name"
    type: string
    sql: ${TABLE}."LASTSERVERNAME" ;;
  }

  dimension_group: lastupdated {
    label: "Last Updated"
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
    sql: ${TABLE}."LASTUPDATED" ;;
  }

  dimension: lastuseragent {
    label: "Last User Agent"
    type: string
    sql: ${TABLE}."LASTUSERAGENT" ;;
  }

  dimension_group: lastvisit {
    label: "Last Visit"
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
    sql: ${TABLE}."LASTVISIT" ;;
  }

  measure: count {
    label: "Visitor Count"
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      visitor_id,
      lastbrowsername,
      lastservername,
      accounts.account_id,
      accounts.name,
      featureevents.count,
      nps.count,
      pageevents.count
    ]
  }
}
