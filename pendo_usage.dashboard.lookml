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
    - monthlyactiveaccountcount.unique_accounts
    - monthlyactiveaccountcount.date_month
    sorts:
    - monthlyactiveaccountcount.unique_accounts
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
    height: 4
  - title: Monthly Active Users (Visitors)
    name: Monthly Active Users (Visitors)
    model: pendo_usage
    explore: monthlyactiveusercount
    type: single_value
    fields:
    - monthlyactiveusercount.unique_visitors
    - monthlyactiveusercount.date_month
    sorts:
    - monthlyactiveusercount.unique_visitors
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
    width: 12
    height: 4
  - title: Top 10 Pages
    name: Top 10 Pages
    model: pendo_usage
    explore: pageevents
    type: looker_bar
    fields:
    - allpages.name
    - pageevents.count
    filters:
      allpages.name: "-Dashboard Home"
    sorts:
    - pageevents.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_labels:
      pageevents.count: Page Event Count - Excludes Dashboard Home Page
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 11
    col: 0
    width: 24
    height: 8
  - title: Top 10 Features
    name: Top 10 Features
    model: pendo_usage
    explore: featureevents
    type: looker_bar
    fields:
    - allfeatures.name
    - featureevents.count
    sorts:
    - featureevents.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 26
    col: 0
    width: 24
    height: 8
  - title: Most Active Visitors by Page Visits
    name: Most Active Visitors by Page Visits
    model: pendo_usage
    explore: pageevents
    type: looker_bar
    fields:
    - pageevents.visitor_id
    - pageevents.count
    sorts:
    - pageevents.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 4
    col: 0
    width: 12
    height: 7
  - title: Most Active Visitors by Feature Visits
    name: Most Active Visitors by Feature Visits
    model: pendo_usage
    explore: featureevents
    type: looker_bar
    fields:
    - featureevents.visitor_id
    - featureevents.count
    sorts:
    - featureevents.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 19
    col: 0
    width: 12
    height: 7
  - title: Most Active Account by Feature Visits
    name: Most Active Account by Feature Visits
    model: pendo_usage
    explore: featureevents
    type: looker_bar
    fields:
    - featureevents.count
    - featureevents.account_id
    sorts:
    - featureevents.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 19
    col: 13
    width: 11
    height: 7
  - title: New TileMost Active Account by Page Visits
    name: New TileMost Active Account by Page Visits
    model: pendo_usage
    explore: pageevents
    type: looker_bar
    fields:
    - pageevents.account_id
    - pageevents.count
    sorts:
    - pageevents.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 4
    col: 13
    width: 11
    height: 7
  - title: Web Browser and Browser Versions In Use
    name: Web Browser and Browser Versions In Use
    model: pendo_usage
    explore: visitors
    type: table
    fields:
    - visitors.lastbrowsername
    - visitors.lastbrowserversion
    sorts:
    - visitors.lastbrowsername
    - visitors.lastbrowserversion desc
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      visitors.lastbrowsername: Browser Name
      visitors.lastbrowserversion: Browser Version
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    row: 41
    col: 16
    width: 8
    height: 6
  - title: Account Industry
    name: Account Industry
    model: pendo_usage
    explore: accounts
    type: looker_column
    fields:
    - accounts.industry
    - accounts.count
    sorts:
    - accounts.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: accounts.count
        name: Account Count
        axisId: accounts.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 34
    col: 0
    width: 24
    height: 7
  - title: Visitor Operating Systems Used
    name: Visitor Operating Systems Used
    model: pendo_usage
    explore: visitors
    type: looker_column
    fields:
    - visitors.lastoperatingsystem
    - visitors.count
    sorts:
    - visitors.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    listen: {}
    row: 41
    col: 0
    width: 8
    height: 6
  - title: Visitor Web Browser Used
    name: Visitor Web Browser Used
    model: pendo_usage
    explore: visitors
    type: looker_column
    fields:
    - visitors.count
    - visitors.lastbrowsername
    sorts:
    - visitors.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    listen: {}
    row: 41
    col: 8
    width: 8
    height: 6
