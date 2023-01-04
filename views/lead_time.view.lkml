# The name of this view in Looker is "Lead Time"
view: lead_time {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twinx-313007.looker_poc_ads_101.Lead Time`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Delivery" in Explore.

  dimension: delivery {
    type: number
    sql: ${TABLE}.Delivery ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_delivery {
    type: sum
    sql: ${delivery} ;;
  }

  measure: average_delivery {
    type: average
    sql: ${delivery} ;;
  }

  measure: average_Lead_time {
    type: average
    sql: ${lead_time__day_} ;;
  }

  dimension: lead_time__day_ {
    type: number
    sql: ${TABLE}.Lead_Time__Day_ ;;
  }

  measure: max_lead_time {
    type: max
    sql: ${lead_time__day_} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
