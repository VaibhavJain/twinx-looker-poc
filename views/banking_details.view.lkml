# The name of this view in Looker is "Banking Details"
view: banking_details {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twinx-313007.looker_poc_ads_101.Banking Details`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age" in Explore.

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: age_tier {
    type: tier
    tiers: [18, 25, 35, 45, 55, 65, 75, 90]
    style: integer
    sql: ${age} ;;
  }

  dimension: balance {
    type: number
    sql: ${TABLE}.balance ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_balance {
    type: sum
    sql: ${balance} ;;
  }

  measure: average_balance {
    type: average
    sql: ${balance} ;;
  }

  dimension: campaign {
    type: number
    sql: ${TABLE}.campaign ;;
  }

  dimension: contact {
    type: string
    sql: ${TABLE}.contact ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.day ;;
  }

  dimension: default {
    type: yesno
    sql: ${TABLE}.`default` ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }

  dimension: duration_tier {
    type: tier
    tiers: [10, 50, 100, 150, 200, 250, 300, 350, 400, 500, 1000, 1500]
    style: integer
    sql: ${duration} ;;
  }

  dimension: education {
    type: string
    sql: ${TABLE}.education ;;
  }

  dimension: housing {
    type: yesno
    sql: ${TABLE}.housing ;;
  }

  dimension: job {
    type: string
    sql: ${TABLE}.job ;;
  }

  dimension: loan {
    type: yesno
    sql: ${TABLE}.loan ;;
  }

  dimension: marital {
    type: string
    sql: ${TABLE}.marital ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: pdays {
    type: number
    sql: ${TABLE}.pdays ;;
  }

  dimension: poutcome {
    type: string
    sql: ${TABLE}.poutcome ;;
  }

  dimension: previous {
    type: number
    sql: ${TABLE}.previous ;;
  }

  dimension: y {
    type: yesno
    sql: ${TABLE}.y ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
