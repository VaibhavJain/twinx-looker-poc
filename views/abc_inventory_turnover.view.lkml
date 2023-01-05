# The name of this view in Looker is "Abc Inventory Turnover"
view: abc_inventory_turnover {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twinx-313007.looker_poc_ads_101.ABC inventory turnover`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Average Stock Cogs " in Explore.

  dimension: average_stock_cogs__ {
    type: number
    sql: ${TABLE}.Average_Stock_COGS__ ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_average_stock_cogs__ {
    type: sum
    sql: ${average_stock_cogs__} ;;
  }

  measure: average_average_stock_cogs__ {
    type: average
    sql: ${average_stock_cogs__} ;;
  }

  dimension: item {
    type: string
    primary_key: yes
    sql: ${TABLE}.Item ;;
  }

  dimension: sales_cogs__ {
    type: number
    sql: ${TABLE}.Sales_COGS__ ;;
  }

  dimension: stock_turn__cycle_ {
    type: number
    sql: ${TABLE}.Stock_Turn__cycle_ ;;
  }

  dimension: stock_turn__days_ {
    type: number
    sql: ${TABLE}.Stock_Turn__days_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
