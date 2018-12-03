view: monthlyactiveaccountcount {
  sql_table_name: PENDO.MONTHLYACTIVEACCOUNTCOUNT ;;

  dimension_group: date {
    label: "MAA Date"
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
    sql: ${TABLE}."DATE" ;;
  }

  dimension: unique_accounts {
    type: string
    sql: ${TABLE}."UNIQUEACCOUNTS" ;;
  }

}
