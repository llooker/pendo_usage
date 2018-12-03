view: accounts {
  sql_table_name: PENDO.ACCOUNTS ;;

  dimension: account_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ACCOUNTID" ;;
  }

  dimension: arrannuallyrecurringrevenue {
    type: string
    sql: ${TABLE}."ARRANNUALLYRECURRINGREVENUE" ;;
  }

  dimension: customersuccessmanager {
    type: string
    sql: ${TABLE}."CUSTOMERSUCCESSMANAGER" ;;
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

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension: lastupdated {
    type: string
    sql: ${TABLE}."LASTUPDATED" ;;
  }

  dimension: lastvisit {
    type: string
    sql: ${TABLE}."LASTVISIT" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: planlevel {
    type: string
    sql: ${TABLE}."PLANLEVEL" ;;
  }

  dimension: renewaldate {
    type: string
    sql: ${TABLE}."RENEWALDATE" ;;
  }

  dimension: totallicenses {
    type: string
    sql: ${TABLE}."TOTALLICENSES" ;;
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
