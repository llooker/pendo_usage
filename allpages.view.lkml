view: allpages {
  label: "All Pages"
  sql_table_name: PENDO.ALLPAGES ;;

  dimension: id {
    primary_key: yes
    label: "Page ID"
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: name {
    label: "Page Name"
    type: string
    sql: ${TABLE}."NAME" ;;
  }

}
