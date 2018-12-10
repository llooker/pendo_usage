view: events {
  derived_table: {
    sql:  select  a.*,
                  min(day) over (partition by VISITORID, ACCOUNTID) as firstvisit_user,
                  max(day) over (partition by VISITORID, ACCOUNTID) as lastvisit_user,
                  min(day) over (partition by ACCOUNTID) as firstvisit_account,
                  max(day) over (partition by ACCOUNTID) as lastvisit_account
          from    PENDO.VISITORS a ;;
  }

  dimension: pk {
    hidden: yes
    type: string
    sql: ${TABLE}.pk ;;
    primary_key: yes
  }

  dimension: accountid {
    label: "Subscription Name"
    type: string
    sql: ${TABLE}.ACCOUNTID ;;
  }

  dimension_group: day {
    label: "Event"
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
    sql: ${TABLE}.DAY ;;
  }

  measure: numevents {
    label: "Number of Events"
    type: sum
    sql: ${TABLE}.NUMEVENTS ;;
    value_format_name: decimal_0
  }

  dimension: numminutes {
    hidden: yes
    type: number
    sql: ${TABLE}.NUMMINUTES ;;
  }

  measure: number_of_minutes {
    label: "Number of Minutes"
    type: sum
    sql: ${numminutes} ;;
    value_format_name: decimal_0
  }

  dimension: type {
    hidden: yes
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  dimension: visitorid {
    label: "Visitor ID"
    type: string
    sql: ${TABLE}.VISITORID ;;
  }

  dimension: days_active_last60 {
    label: "Days Active Out of Last 60 Days"
    type: number
    sql: ${TABLE}.DAYS_ACTIVE_LAST60 ;;
  }

  dimension_group: firstvisit_user {
    label: "First Visit - User"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year
    ]
    sql: ${TABLE}.FIRSTVISIT_USER ;;
  }

  dimension_group: lastvisit_user {
    label: "Last Visit - User"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year
    ]
    sql: ${TABLE}.LASTVISIT_USER ;;
  }

  dimension_group: firstvisit_account {
    label: "First Visit - Account"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year
    ]
    sql: ${TABLE}.FIRSTVISIT_ACCOUNT ;;
  }

  dimension_group: lastvisit_account {
    label: "Last Visit - Account"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year
    ]
    sql: ${TABLE}.LASTVISIT_ACCOUNT ;;
  }

  measure: active_user {
    label: "Active User"
    type: count_distinct
    sql: CONCAT(${visitorid},${accountid}) ;;
    value_format_name: decimal_0
  }

  measure: new_mau {
    label: "New MAU"
    type: count_distinct
    sql: case when ${firstvisit_user_month}=${day_month} then CONCAT(${visitorid},${accountid}) else null end ;;
  }

  measure: churned_mau {
    label: "Churned MAU"
    type: count_distinct
    sql: case when ${lastvisit_user_month}=${day_month} then CONCAT(${visitorid},${accountid}) else null end ;;
  }

  measure: active_account {
    label: "Active Account"
    type: count_distinct
    sql: ${accountid} ;;
    value_format_name: decimal_0
  }
}
