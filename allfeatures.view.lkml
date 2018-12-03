view: allfeatures {
  sql_table_name: PENDO.ALLFEATURES ;;

  dimension: id {
    label: "Feature ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: name {
    label: "Feature Name"
    type: string
    sql: ${TABLE}."NAME" ;;
  }

}
