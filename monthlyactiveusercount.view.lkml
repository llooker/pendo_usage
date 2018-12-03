view: monthlyactiveusercount {
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
    type: string
    sql: ${TABLE}."UNIQUEVISITORS" ;;
  }

}
