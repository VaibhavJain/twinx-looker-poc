# The name of this view in Looker is "Abc Lead Time"
view: abc_lead_time {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twinx-313007.looker_poc_ads_101.ABC lead time`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Client" in Explore.

  dimension: client {
    type: string
    sql: ${TABLE}.Client ;;
  }

  dimension: contract_delivery_date {
    type: string
    sql: ${TABLE}.Contract_Delivery_Date ;;
  }

  dimension: contract_lead_time {
    type: number
    sql: ${TABLE}.Contract_Lead_time ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_contract_lead_time {
    type: sum
    sql: ${contract_lead_time} ;;
  }

  measure: average_contract_lead_time {
    type: average
    sql: ${contract_lead_time} ;;
  }

  dimension: delay {
    type: number
    sql: ${TABLE}.Delay ;;
  }

  dimension: order {
    type: string
    sql: ${TABLE}.`Order` ;;
  }

  dimension: order__ {
    type: number
    sql: ${TABLE}.Order__ ;;
  }

  dimension: order_date {
    type: string
    sql: ${TABLE}.Order_Date ;;
  }

  dimension: order_qty {
    type: number
    sql: ${TABLE}.Order_Qty ;;
  }

  dimension: real_delivery_date {
    type: string
    sql: ${TABLE}.Real_Delivery_Date ;;
  }

  dimension: real_lead_time {
    type: number
    sql: ${TABLE}.Real_Lead_time ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.Supplier ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
