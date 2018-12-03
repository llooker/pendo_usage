view: monthlyactiveaccountcount {
  sql_table_name: PENDO.MONTHLYACTIVEACCOUNTCOUNT ;;

  dimension: date {
    type: string
    sql: ${TABLE}."DATE" ;;
  }

  dimension: unique_accounts {
    type: string
    sql: ${TABLE}."UNIQUEACCOUNTS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
