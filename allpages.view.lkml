view: allpages {
  sql_table_name: PENDO.ALLPAGES ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
