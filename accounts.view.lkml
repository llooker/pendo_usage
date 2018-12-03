view: accounts {
  label: "Accounts"
  sql_table_name: PENDO.ACCOUNTS ;;

  dimension: account_id {
    label: "Account ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."ACCOUNTID" ;;
  }

  dimension: arrannuallyrecurringrevenue {
    label: "ARR"
    type: string
    sql: ${TABLE}."ARRANNUALLYRECURRINGREVENUE" ;;
  }

  dimension: customersuccessmanager {
    label: "Pendo CSM"
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
    label: "Account Industry"
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
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

  dimension: name {
    label: "Account Name"
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: planlevel {
    label: "Plan Level"
    type: string
    sql: ${TABLE}."PLANLEVEL" ;;
  }

  dimension_group: renewaldate {
    label: "Renewal Date"
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
    sql: ${TABLE}."RENEWALDATE" ;;
  }

  dimension: totallicenses {
    label: "Total Licenses"
    type: string
    sql: ${TABLE}."TOTALLICENSES" ;;
  }

  measure: count {
    label: "Account Count"
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
