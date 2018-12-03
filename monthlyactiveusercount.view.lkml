view: monthlyactiveusercount {
  sql_table_name: PENDO.MONTHLYACTIVEUSERCOUNT ;;

  dimension: date {
    type: string
    sql: ${TABLE}."DATE" ;;
  }

  dimension: unique_visitors {
    type: string
    sql: ${TABLE}."UNIQUEVISITORS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
