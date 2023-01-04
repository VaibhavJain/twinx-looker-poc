# The name of this view in Looker is "Abc Inventory Accuracy"
view: abc_inventory_accuracy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twinx-313007.looker_poc_ads_101.ABC inventory accuracy`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cogs Price " in Explore.

  dimension: cogs_price__ {
    type: number
    sql: ${TABLE}.Cogs_price__ ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cogs_price__ {
    type: sum
    sql: ${cogs_price__} ;;
  }

  measure: average_cogs_price__ {
    type: average
    sql: ${cogs_price__} ;;
  }

  dimension: inventory_accuracy {
    type: number
    sql: ${TABLE}.Inventory_accuracy ;;
  }

  dimension: it_stock__ {
    type: number
    sql: ${TABLE}.IT_Stock__ ;;
  }

  dimension: it_stock_qty {
    type: number
    sql: ${TABLE}.IT_Stock_qty ;;
  }

  dimension: item {
    type: string
    sql: ${TABLE}.Item ;;
  }

  dimension: qty_gap {
    type: number
    sql: ${TABLE}.Qty_gap ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}.Sector ;;
  }

  dimension: stock_check__ {
    type: number
    sql: ${TABLE}.Stock_check__ ;;
  }

  dimension: stock_qty_check {
    type: number
    sql: ${TABLE}.Stock_qty_check ;;
  }

  dimension: value___gap {
    type: number
    sql: ${TABLE}.Value___gap ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
