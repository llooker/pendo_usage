view: monthlyactiveusercount {
  sql_table_name: PENDO.MONTHLYACTIVEUSERCOUNT ;;

  dimension: date {
    type: string
    sql: ${TABLE}."date" ;;
  }

  dimension: unique_visitors {
    type: string
    sql: ${TABLE}."uniqueVisitors" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
