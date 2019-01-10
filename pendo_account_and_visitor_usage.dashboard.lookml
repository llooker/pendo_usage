- dashboard: pendo_account_and_visitor_usage
  title: Pendo Account and Visitor Usage
  layout: newspaper
  elements:
  - title: New MAUs - Last 14 Months
    name: New MAUs - Last 14 Months
    model: pendo_usage
    explore: events
    type: looker_column
    fields:
    - events.new_mau
    - events.day_month
    filters:
      events.new_mau: NOT NULL
      events.day_month: 14 months
    sorts:
    - events.day_month desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      events.new_mau: "#74bab3"
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: New Monthly Active Users (MAUs)
      orientation: left
      series:
      - id: events.new_mau
        name: New MAU
        axisId: events.new_mau
      showLabels: true
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
    x_axis_label: Month
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_label_rotation: 270
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 6
    col: 0
    width: 8
    height: 8
  - title: Churned MAUs - Last 12 Months - 3 Month Offset
    name: Churned MAUs - Last 12 Months - 3 Month Offset
    model: pendo_usage
    explore: events
    type: looker_column
    fields:
    - events.churned_mau
    - events.day_month
    filters:
      events.churned_mau: NOT NULL
      events.day_month: 15 months
    sorts:
    - events.day_month desc
    limit: 500
    dynamic_fields:
    - table_calculation: month
      label: Month
      expression: offset(${events.day_month},-3)
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: date
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      events.churned_mau: "#edb7bf"
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: Churned Monthly Active Users (MAUs)
      orientation: left
      series:
      - id: events.churned_mau
        name: Churned MAU
        axisId: events.churned_mau
      showLabels: true
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
    x_axis_label: Month
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_label_rotation: 270
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - events.day_month
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 8
  - title: Net MAUs - Last 14 Months
    name: Net MAUs - Last 14 Months
    model: pendo_usage
    explore: events
    type: looker_column
    fields:
    - events.churned_mau
    - events.new_mau
    - events.day_month
    fill_fields:
    - events.day_month
    filters:
      events.day_month: 14 months
    sorts:
    - events.day_month desc
    limit: 500
    dynamic_fields:
    - table_calculation: churn_offset
      label: Churn Offset
      expression: offset(${events.churned_mau},3)
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - table_calculation: net_maus
      label: Net MAUs
      expression: "${events.new_mau} - ${churn_offset}"
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      net_maus: "#ede05f"
    series_types: {}
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    y_axes:
    - label: Net Monthly Active Users (MAUs)
      orientation: left
      series:
      - id: net_maus
        name: Net MAUs
        axisId: net_maus
      showLabels: true
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
    x_axis_label: Month
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_label_rotation: 270
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - events.churned_mau
    - events.new_mau
    - churn_offset
    listen: {}
    row: 6
    col: 16
    width: 8
    height: 8
  - title: Average Time on Site per MAU - Last 14 Months
    name: Average Time on Site per MAU - Last 14 Months
    model: pendo_usage
    explore: events
    type: looker_column
    fields:
    - events.day_month
    - events.number_of_minutes
    - events.active_user
    fill_fields:
    - events.day_month
    filters:
      events.day_month: 14 months
    sorts:
    - events.day_month desc
    limit: 500
    dynamic_fields:
    - table_calculation: average_mins_per_mau
      label: Average Mins Per MAU
      expression: "${events.number_of_minutes} / ${events.active_user}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: Average Mins Per Monthly Active User (MAU)
      orientation: left
      series:
      - id: average_mins_per_mau
        name: Average Mins Per MAU
        axisId: average_mins_per_mau
      showLabels: true
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
    x_axis_label: Month
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_label_rotation: 270
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - events.number_of_minutes
    - events.active_user
    listen: {}
    row: 14
    col: 8
    width: 8
    height: 8
  - title: Monthly Active Users (Visitors)
    name: Monthly Active Users (Visitors)
    model: pendo_usage
    explore: events
    type: single_value
    fields:
    - events.day_month
    - events.active_user
    fill_fields:
    - events.day_month
    filters:
      events.day_month: 1 months
    sorts:
    - events.day_month desc
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 0
    col: 0
    width: 12
    height: 6
  - title: Monthly Active Accounts
    name: Monthly Active Accounts
    model: pendo_usage
    explore: events
    type: single_value
    fields:
    - events.day_month
    - events.active_account
    fill_fields:
    - events.day_month
    filters:
      events.day_month: 1 months
    sorts:
    - events.day_month desc
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 0
    col: 12
    width: 12
    height: 6
  - title: Visitor Frequency - Last 14 Months
    name: Visitor Frequency - Last 14 Months
    model: pendo_usage
    explore: events
    type: looker_column
    fields:
    - events.day_month
    - pendo_activeuser_view.frequency
    - pendo_activeuser_view.user_cnt
    pivots:
    - pendo_activeuser_view.frequency
    fill_fields:
    - events.day_month
    - pendo_activeuser_view.frequency
    filters:
      events.day_month: 14 months
    sorts:
    - pendo_activeuser_view.frequency 0
    - events.day_month desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: percent
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      Daily - 0 - pendo_activeuser_view.user_cnt: "#edb7bf"
      Weekly - 1 - pendo_activeuser_view.user_cnt: "#ede05f"
      Monthly - 2 - pendo_activeuser_view.user_cnt: "#74bab3"
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Month
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_label_rotation: 270
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 22
    col: 0
    width: 12
    height: 9
  - title: Account Frequency - Last 14 Months
    name: Account Frequency - Last 14 Months
    model: pendo_usage
    explore: events
    type: looker_column
    fields:
    - events.day_month
    - pendo_activeaccount_view.frequency
    - pendo_activeaccount_view.account_cnt
    pivots:
    - pendo_activeaccount_view.frequency
    fill_fields:
    - events.day_month
    - pendo_activeaccount_view.frequency
    filters:
      events.day_month: 14 months
    sorts:
    - events.day_month desc
    - pendo_activeaccount_view.frequency
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: percent
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      Daily - 0 - pendo_activeaccount_view.account_cnt: "#edb7bf"
      Weekly - 1 - pendo_activeaccount_view.account_cnt: "#ede05f"
      Monthly - 2 - pendo_activeaccount_view.account_cnt: "#74bab3"
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Month
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_label_rotation: 270
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 22
    col: 12
    width: 12
    height: 9
  - title: Total MAUs - Last 14 Months
    name: Total MAUs - Last 14 Months
    model: pendo_usage
    explore: events
    type: looker_column
    fields:
    - events.day_month
    - events.active_user
    fill_fields:
    - events.day_month
    filters:
      events.day_month: 14 months
    sorts:
    - events.day_month desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
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
    x_axis_label: Month
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_label_rotation: 270
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 14
    col: 0
    width: 8
    height: 8
  - title: Average MAUs Per Account - Last 14 Months
    name: Average MAUs Per Account - Last 14 Months
    model: pendo_usage
    explore: events
    type: looker_column
    fields:
    - events.day_month
    - events.active_account
    - events.active_user
    fill_fields:
    - events.day_month
    filters:
      events.day_month: 14 months
    sorts:
    - events.day_month desc
    limit: 500
    dynamic_fields:
    - table_calculation: average_maus_per_account
      label: Average MAUs Per Account
      expression: "${events.active_user} / ${events.active_account}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: Average Monthly Active Users (MAUs) Per Account
      orientation: left
      series:
      - id: average_maus_per_account
        name: Average MAUs Per Account
        axisId: average_maus_per_account
      showLabels: true
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
    x_axis_label: Month
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_label_rotation: 270
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - events.active_account
    - events.active_user
    listen: {}
    row: 14
    col: 16
    width: 8
    height: 8
