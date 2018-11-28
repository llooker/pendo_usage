view: visitors {
  sql_table_name: PENDO.VISITORS ;;

  dimension: visitor_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."visitorId" ;;
  }

  dimension: accountid {
    type: string
    # hidden: yes
    sql: ${TABLE}."accountid" ;;
  }

  dimension: firstvisit {
    type: string
    sql: ${TABLE}."firstvisit" ;;
  }

  dimension: lastbrowsername {
    type: string
    sql: ${TABLE}."lastbrowsername" ;;
  }

  dimension: lastbrowserversion {
    type: string
    sql: ${TABLE}."lastbrowserversion" ;;
  }

  dimension: lastoperatingsystem {
    type: string
    sql: ${TABLE}."lastoperatingsystem" ;;
  }

  dimension: lastservername {
    type: string
    sql: ${TABLE}."lastservername" ;;
  }

  dimension: lastupdated {
    type: string
    sql: ${TABLE}."lastupdated" ;;
  }

  dimension: lastuseragent {
    type: string
    sql: ${TABLE}."lastuseragent" ;;
  }

  dimension: lastvisit {
    type: string
    sql: ${TABLE}."lastvisit" ;;
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
