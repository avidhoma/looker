connection: "thelook"

# include all the views
include: "*.view"

datagroup: ad_thelook_custom_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  #set cache from default 1 hour to 4 hours ;
  max_cache_age: "4 hour"
}

persist_with: ad_thelook_custom_datagroup

explore: distribution_centers {}

explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: inventory_items {
  fields: [ALL_FIELDS*,
    -products.id,
    -products.distribution_center_id
  ]

  sql_always_where: ${created_date}>='2015-01-01' ;;

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: order_items {
  label: "Orders"
  always_filter: {
    filters: {
      field: users.country
      value: "USA"
    }
  }
  join: users {
    view_label: "Users"
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    fields: [users.Full_name,users.first_name,users.last_name,users.age,users.gender,users.country,users.zip, users.users_location,users.age_tier]
    relationship: many_to_one
  }

  join: inventory_items {
    view_label: "Inventory"
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: products {
    view_label: "Products"
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    view_label: "Distribution Centers"
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: products {
  join: distribution_centers {
    view_label: "Distribution Centers"
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: users {}
