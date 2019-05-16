- dashboard: explore_orders_dashboard
  title: Explore Orders Dashboard
  layout: newspaper
  elements:
  - name: Orders by User Location
    title: Orders by User Location
    model: avananda_thelook
    explore: order_items
    type: looker_map
    fields: [distribution_centers.location, users.users_location, order_items.count]
    filters:
      users.country: USA
    sorts: [order_items.count desc]
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
    reverse_map_value_colors: true
    series_types: {}
    listen:
      Order Create Date: inventory_items.created_date
      Orders Count: order_items.count_orders
    row: 5
    col: 0
    width: 13
    height: 9
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
      Order Create Date: inventory_items.created_date
      Orders Count: order_items.count_orders
    row: 2
    col: 0
    width: 5
    height: 3
  - name: Total Returned Price
    title: Total Returned Price
    model: avananda_thelook
    explore: order_items
    type: single_value
    fields: [order_items.total_returend_price]
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
      Order Create Date: inventory_items.created_date
      Orders Count: order_items.count_orders
    row: 2
    col: 5
    width: 5
    height: 3
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
      Order Create Date: inventory_items.created_date
      Orders Count: order_items.count_orders
    row: 0
    col: 10
    width: 3
    height: 5
  - name: Order by Location and Gender
    title: Order by Location and Gender
    model: avananda_thelook
    explore: order_items
    type: sankey
    fields: [distribution_centers.name, users.gender, order_items.count_orders]
    filters:
      users.country: USA
    sorts: [order_items.count_orders desc]
    limit: 500
    total: true
    query_timezone: America/Los_Angeles
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    show_null_points: false
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
    listen: {}
    row: 14
    col: 0
    width: 13
    height: 10
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
      Order Create Date: inventory_items.created_date
      Orders Count: order_items.count_orders
    row: 5
    col: 13
    width: 11
    height: 9
  - name: Total Orders
    title: Total Orders
    model: avananda_thelook
    explore: order_items
    type: single_value
    fields: [order_items.count_orders]
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
      Order Create Date: inventory_items.created_date
      Orders Count: order_items.count_orders
    row: 0
    col: 0
    width: 5
    height: 2
  - name: Returned Orders
    title: Returned Orders
    model: avananda_thelook
    explore: order_items
    type: single_value
    fields: [order_items.count_orders]
    filters:
      users.country: USA
      order_items.is_returned: 'Yes'
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
      Order Create Date: inventory_items.created_date
      Orders Count: order_items.count_orders
    row: 0
    col: 5
    width: 5
    height: 2
  - name: Orders by Month (moved from Avananda Dhoma)
    title: Orders by Month (moved from Avananda Dhoma)
    model: avananda_thelook
    explore: order_items
    type: looker_area
    fields: [order_items.count_orders, order_items.created_month]
    fill_fields: [order_items.created_month]
    filters:
      users.country: USA
      order_items.is_returned: 'Yes'
    sorts: [order_items.created_month desc]
    limit: 500
    total: true
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.count_orders,
            id: order_items.count_orders, name: Count Orders}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    point_style: circle
    series_point_styles:
      order_items.count_orders: auto
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: [{color: "#000000", label_position: right, period: 7, regression_type: linear,
        series_index: 1, show_label: false, label_type: string, label: Trend line}]
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
      Order Create Date: inventory_items.created_date
      Orders Count: order_items.count_orders
    row: 0
    col: 13
    width: 11
    height: 5
  - name: Orders by Category
    title: Orders by Category
    model: avananda_thelook
    explore: order_items
    type: looker_column
    fields: [order_items.count_orders, products.category]
    filters:
      users.country: USA
      order_items.created_month: 13 months ago for 13 months
    sorts: [order_items.count_orders desc]
    limit: 500
    total: true
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.count_orders,
            id: order_items.count_orders, name: Count Orders}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    point_style: circle
    series_point_styles:
      order_items.count_orders: auto
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_null_points: true
    interpolation: linear
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
    row: 14
    col: 13
    width: 11
    height: 10
  - name: Orders by Brand
    title: Orders by Brand
    model: avananda_thelook
    explore: order_items
    type: table
    fields: [order_items.count_orders, products.category, products.brand, order_items.total_sale_price,
      order_items.total_returend_price]
    filters:
      users.country: USA
      order_items.created_month: 13 months ago for 13 months
    sorts: [products.category, order_items.count_orders desc]
    limit: 500
    total: true
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_collapsed:
      products.category: false
    enable_conditional_formatting: true
    conditional_formatting: [{type: greater than, value: 100, background_color: "#ffa347",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: [order_items.total_returend_price]}]
    conditional_formatting_include_totals: true
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.count_orders,
            id: order_items.count_orders, name: Count Orders}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    legend_position: center
    series_types: {}
    point_style: circle
    series_point_styles:
      order_items.count_orders: auto
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_null_points: true
    interpolation: linear
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
    row: 24
    col: 0
    width: 24
    height: 9
  filters:
  - name: Order Create Date
    title: Order Create Date
    type: field_filter
    default_value: 13 months ago for 13 months
    allow_multiple_values: true
    required: false
    model: avananda_thelook
    explore: order_items
    listens_to_filters: []
    field: inventory_items.created_date
  - name: Orders Count
    title: Orders Count
    type: number_filter
    default_value: ">=1"
    allow_multiple_values: true
    required: false
