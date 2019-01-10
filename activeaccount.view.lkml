view: pendo_activeaccount_view {
  derived_table: {
    sql:
                  SELECT    ACCOUNTID,
                            MONTH(DAY) as MTH,
                            count(1) as LOGINS
                  from      PENDO.EVENTS a
                  group by  1,2
 ;;
  }

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.accountid ;;
  }

  dimension: accountid {
    label: "Account ID"
    sql: ${TABLE}.accountid ;;
  }

  dimension_group: mth {
    label: "Month"
    type: time
    timeframes: [month]
    datatype: date
    convert_tz: no
    sql: ${TABLE}.Mth ;;
  }

  dimension: frequency {
    label: "Frequency"
    type: string
    case:{
      when: {
        sql:  ${TABLE}.logins >= 13 ;;
        label: "Daily"}
      when: {
        sql:  ${TABLE}.logins < 13 and ${TABLE}.logins>=5 ;;
        label: "Weekly"}
      when: {
        sql:  ${TABLE}.logins < 5 ;;
        label: "Monthly"}
    }

  }

  measure: account_cnt {
    label: "Account Count"
    type: count

  }

}
