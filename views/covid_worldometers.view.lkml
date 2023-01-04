# The name of this view in Looker is "Covid Worldometers"
view: covid_worldometers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twinx-313007.looker_poc_ads_101.Covid worldometers`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Active Cases" in Explore.

  dimension: active_cases {
    type: number
    sql: ${TABLE}.Active_Cases ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_active_cases {
    type: sum
    sql: ${active_cases} ;;
  }

  measure: average_active_cases {
    type: average
    sql: ${active_cases} ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.Population ;;
  }

  dimension: serious_or_critical {
    type: number
    sql: ${TABLE}.Serious_or_Critical ;;
  }

  dimension: total_cases {
    type: number
    sql: ${TABLE}.Total_Cases ;;
  }

  dimension: total_deaths {
    type: number
    sql: ${TABLE}.Total_Deaths ;;
  }

  dimension: total_recovered {
    type: number
    sql: ${TABLE}.Total_Recovered ;;
  }

  dimension: total_tests {
    type: number
    sql: ${TABLE}.Total_Tests ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
