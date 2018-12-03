view: monthlyactiveusercount {
  label: "Monthly Active User Count"
  sql_table_name: PENDO.MONTHLYACTIVEUSERCOUNT ;;

  dimension_group: date {
    label: "MAU Date"
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

  dimension: unique_visitors {
    label: "Unique Visitors"
    type: string
    sql: ${TABLE}."UNIQUEVISITORS" ;;
  }

}
