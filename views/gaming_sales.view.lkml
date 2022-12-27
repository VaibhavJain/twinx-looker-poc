# The name of this view in Looker is "Gaming Sales"
view: gaming_sales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twinx-313007.looker_poc_ads_101.Gaming Sales`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Eu Sales" in Explore.

  dimension: eu_sales {
    type: number
    sql: ${TABLE}.EU_Sales ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_eu_sales {
    type: sum
    sql: ${eu_sales} ;;
  }

  measure: average_eu_sales {
    type: average
    sql: ${eu_sales} ;;
  }

  dimension: genre {
    type: string
    sql: ${TABLE}.Genre ;;
  }

  dimension: global_sales {
    type: number
    sql: ${TABLE}.Global_Sales ;;
  }

  dimension: jp_sales {
    type: number
    sql: ${TABLE}.JP_Sales ;;
  }

  dimension: na_sales {
    type: number
    sql: ${TABLE}.NA_Sales ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: other_sales {
    type: number
    sql: ${TABLE}.Other_Sales ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.Platform ;;
  }

  dimension: publisher {
    type: string
    sql: ${TABLE}.Publisher ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.Rank ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
