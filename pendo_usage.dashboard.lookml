- dashboard: pendo_usage
  title: Pendo Usage
  layout: newspaper
  elements:
  - title: Monthly Active Accounts
    name: Monthly Active Accounts
    model: pendo_usage
    explore: monthlyactiveaccountcount
    type: single_value
    fields:
    - monthlyactiveaccountcount.date
    - monthlyactiveaccountcount.unique_accounts
    sorts:
    - monthlyactiveaccountcount.date
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Monthly Active Accounts
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    hidden_fields:
    - monthlyactiveaccountcount.date
    row: 0
    col: 13
    width: 11
    height: 6
  - title: Monthly Active Users (Visitors)
    name: Monthly Active Users (Visitors)
    model: pendo_usage
    explore: monthlyactiveusercount
    type: single_value
    fields:
    - monthlyactiveusercount.date
    - monthlyactiveusercount.unique_visitors
    sorts:
    - monthlyactiveusercount.date
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Monthly Active Users (Visitors)
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields:
    - monthlyactiveusercount.date
    series_types: {}
    row: 0
    col: 0
    width: 13
    height: 6
