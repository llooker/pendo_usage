view: monthlyactiveaccountcount {
  label: "Monthly Active Account Count"
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
    label: "Unique Accounts"
    type: string
    sql: ${TABLE}."UNIQUEACCOUNTS" ;;
  }

}
