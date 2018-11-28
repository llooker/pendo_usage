view: accounts {
  sql_table_name: PENDO.ACCOUNTS ;;

  dimension: account_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."accountId" ;;
  }

  dimension: arrannuallyrecurringrevenue {
    type: string
    sql: ${TABLE}."arrannuallyrecurringrevenue" ;;
  }

  dimension: customersuccessmanager {
    type: string
    sql: ${TABLE}."customersuccessmanager" ;;
  }

  dimension: firstvisit {
    type: string
    sql: ${TABLE}."firstvisit" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."industry" ;;
  }

  dimension: lastupdated {
    type: string
    sql: ${TABLE}."lastupdated" ;;
  }

  dimension: lastvisit {
    type: string
    sql: ${TABLE}."lastvisit" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: planlevel {
    type: string
    sql: ${TABLE}."planlevel" ;;
  }

  dimension: renewaldate {
    type: string
    sql: ${TABLE}."renewaldate" ;;
  }

  dimension: totallicenses {
    type: string
    sql: ${TABLE}."totallicenses" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      account_id,
      name,
      featureevents.count,
      nps.count,
      pageevents.count,
      visitors.count
    ]
  }
}
