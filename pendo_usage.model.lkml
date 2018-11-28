connection: "pendosnowflake"

# include all the views
include: "*.view"

datagroup: pendo_usage_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pendo_usage_default_datagroup

explore: accounts {
  label: "Accounts"
}


explore: allfeatures {
  label: "All Features"
}


explore: allpages {}

explore: featureevents {
  join: accounts {
    type: left_outer
    sql_on: ${featureevents.account_id} = ${accounts.account_id} ;;
    relationship: many_to_one
  }

  join: visitors {
    type: left_outer
    sql_on: ${featureevents.visitor_id} = ${visitors.visitor_id} ;;
    relationship: many_to_one
  }
}

explore: monthlyactiveaccountcount {}

explore: monthlyactiveusercount {}

explore: pageevents {
  join: accounts {
    type: left_outer
    sql_on: ${pageevents.account_id} = ${accounts.account_id} ;;
    relationship: many_to_one
  }

  join: visitors {
    type: left_outer
    sql_on: ${pageevents.visitor_id} = ${visitors.visitor_id} ;;
    relationship: many_to_one
  }
}

explore: visitors {
  join: accounts {
    type: left_outer
    sql_on: ${visitors.accountid} = ${accounts.account_id} ;;
    relationship: many_to_one
  }
}
