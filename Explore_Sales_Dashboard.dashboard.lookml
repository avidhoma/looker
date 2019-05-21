- dashboard: explore_sales_dashboard
  title: Sales_Dashboard
  layout: newspaper
  elements:
  - name: Total Sale Price
    title: Total Sale Price
    model: avananda_thelook
    explore: order_items
    type: single_value
    fields: [order_items.total_sale_price]
    filters:
      users.country: USA
    limit: 500
    total: true
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: custom
    map_latitude: 39.32674138709581
    map_longitude: -89.51171994209291
    map_zoom: 4
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    up_color: "#62bad4"
    down_color: "#a9c574"
    total_color: "#929292"
    listen:
      Date: order_items.created_date
    row: 0
    col: 0
    width: 6
    height: 6
  - name: Prev Month Sale Price
    title: Prev Month Sale Price
    model: avananda_thelook
    explore: order_items
    type: single_value
    fields: [order_items.prev_month_sale]
    filters:
      users.country: USA
    limit: 500
    total: true
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color_enabled: true
    custom_color: "#2761ff"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: custom
    map_latitude: 39.32674138709581
    map_longitude: -89.51171994209291
    map_zoom: 4
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    up_color: "#62bad4"
    down_color: "#a9c574"
    total_color: "#929292"
    listen:
      Date: order_items.created_date
    row: 0
    col: 6
    width: 6
    height: 6
  - name: Sales by Year
    title: Sales by Year
    model: avananda_thelook
    explore: order_items
    type: looker_pie
    fields: [order_items.total_sale_price, order_items.created_year]
    fill_fields: [order_items.created_year]
    filters:
      users.country: USA
      inventory_items.created_date: 13 months ago for 13 months
    sorts: [order_items.created_year desc]
    limit: 500
    column_limit: 50
    total: true
    query_timezone: America/Los_Angeles
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: order_items.total_sale_price
    plot_size_by_field: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    custom_color_enabled: true
    custom_color: "#72D16D"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: custom
    map_latitude: 39.32674138709581
    map_longitude: -89.51171994209291
    map_zoom: 4
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    up_color: "#62bad4"
    down_color: "#a9c574"
    total_color: "#929292"
    hidden_points_if_no: [calculation_1]
    hidden_fields: []
    listen:
      Date: order_items.created_date
    row: 0
    col: 12
    width: 8
    height: 6
  - name: Cost and Gross Margin by Month
    title: Cost and Gross Margin by Month
    model: avananda_thelook
    explore: order_items
    type: looker_area
    fields: [order_items.delivered_month, inventory_items.total_cost, order_items.total_gross_margin]
    fill_fields: [order_items.delivered_month]
    filters:
      users.country: USA
      order_items.delivered_month: 13 months ago for 13 months
    sorts: [order_items.delivered_month desc]
    limit: 500
    total: true
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: step
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    custom_color_enabled: true
    custom_color: "#2761ff"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: custom
    map_latitude: 39.32674138709581
    map_longitude: -89.51171994209291
    map_zoom: 4
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    up_color: "#62bad4"
    down_color: "#a9c574"
    total_color: "#929292"
    listen:
      Date: inventory_items.created_date
    row: 13
    col: 12
    width: 12
    height: 8
  - name: Brand Sales
    title: Brand Sales
    model: avananda_thelook
    explore: order_items
    type: looker_bar
    fields: [products.brand, order_items.total_sale_price]
    filters:
      users.country: USA
      inventory_items.created_date: 13 months ago for 13 months
    sorts: [order_items.total_sale_price desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'rank(${order_items.total_sale_price},${order_items.total_sale_price})
          <=10', value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color_enabled: true
    custom_color: "#72D16D"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: custom
    map_latitude: 39.32674138709581
    map_longitude: -89.51171994209291
    map_zoom: 4
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    up_color: "#62bad4"
    down_color: "#a9c574"
    total_color: "#929292"
    hidden_points_if_no: [calculation_1]
    listen:
      Date: order_items.created_date
    row: 6
    col: 0
    width: 12
    height: 7
  - name: Category Sales
    title: Category Sales
    model: avananda_thelook
    explore: order_items
    type: looker_column
    fields: [order_items.total_sale_price, products.category]
    filters:
      users.country: USA
      inventory_items.created_date: 13 months ago for 13 months
    sorts: [order_items.total_sale_price desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'rank(${order_items.total_sale_price},${order_items.total_sale_price})
          <=10', value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color_enabled: true
    custom_color: "#72D16D"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: custom
    map_latitude: 39.32674138709581
    map_longitude: -89.51171994209291
    map_zoom: 4
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    up_color: "#62bad4"
    down_color: "#a9c574"
    total_color: "#929292"
    hidden_points_if_no: [calculation_1]
    listen:
      Date: order_items.created_date
    row: 6
    col: 12
    width: 12
    height: 7
  - name: Sales vs Cost by Category
    title: Sales vs Cost by Category
    model: avananda_thelook
    explore: order_items
    type: looker_scatter
    fields: [order_items.total_sale_price, inventory_items.total_cost, products.category]
    filters:
      users.country: USA
      inventory_items.created_date: 13 months ago for 13 months
    sorts: [order_items.total_sale_price desc]
    limit: 500
    column_limit: 50
    total: true
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: order_items.total_sale_price
    plot_size_by_field: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle_outline
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    custom_color_enabled: true
    custom_color: "#72D16D"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: custom
    map_latitude: 39.32674138709581
    map_longitude: -89.51171994209291
    map_zoom: 4
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    up_color: "#62bad4"
    down_color: "#a9c574"
    total_color: "#929292"
    hidden_points_if_no: [calculation_1]
    hidden_fields: [products.category]
    listen:
      Date: order_items.created_date
    row: 13
    col: 0
    width: 12
    height: 8
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 6 months ago for 6 months
    allow_multiple_values: true
    required: false
