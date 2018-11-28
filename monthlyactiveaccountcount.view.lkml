view: monthlyactiveaccountcount {
  sql_table_name: PENDO.MONTHLYACTIVEACCOUNTCOUNT ;;

  dimension: date {
    type: string
    sql: ${TABLE}."date" ;;
  }

  dimension: unique_accounts {
    type: string
    sql: ${TABLE}."uniqueAccounts" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
