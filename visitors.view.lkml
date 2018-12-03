view: visitors {
  sql_table_name: PENDO.VISITORS ;;

  dimension: visitor_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."VISITORID" ;;
  }

  dimension: accountid {
    type: string
    # hidden: yes
    sql: ${TABLE}."ACCOUNTID" ;;
  }

  dimension: firstvisit {
    type: string
    sql: ${TABLE}."FIRSTVISIT" ;;
  }

  dimension: lastbrowsername {
    type: string
    sql: ${TABLE}."LASTBROWSERNAME" ;;
  }

  dimension: lastbrowserversion {
    type: string
    sql: ${TABLE}."LASTBROWSERVERSION" ;;
  }

  dimension: lastoperatingsystem {
    type: string
    sql: ${TABLE}."LASTOPERATINGSYSTEM" ;;
  }

  dimension: lastservername {
    type: string
    sql: ${TABLE}."LASTSERVERNAME" ;;
  }

  dimension: lastupdated {
    type: string
    sql: ${TABLE}."LASTUPDATED" ;;
  }

  dimension: lastuseragent {
    type: string
    sql: ${TABLE}."LASTUSERAGENT" ;;
  }

  dimension: lastvisit {
    type: string
    sql: ${TABLE}."LASTVISIT" ;;
  }

  measure: count {
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
