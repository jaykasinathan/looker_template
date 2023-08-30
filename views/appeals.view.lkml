view: appeals {
  sql_table_name: `bi-eng-internal.chs_looker_dashboard.appeals`
    ;;

  dimension: account_status {
    type: string
    sql: ${TABLE}.account_status ;;
  }

  dimension: band {
    type: string
    sql: ${TABLE}.band ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension_group: date_entered_update {
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
    sql: ${TABLE}.date_entered_update ;;
  }

  dimension: financial_class {
    type: string
    sql: ${TABLE}.financial_class ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension: market {
    type: string
    sql: ${TABLE}.market ;;
  }

  dimension: number_of_records {
    type: number
    sql: ${TABLE}.number_of_records ;;
  }

  dimension: payor_name {
    type: string
    sql: ${TABLE}.payor_name ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: reporting_name {
    type: string
    sql: ${TABLE}.reporting_name ;;
  }

  dimension: reporting_name_consolidated {
    type: string
    sql: ${TABLE}.reporting_name_consolidated ;;
  }

  dimension: ssc {
    type: string
    sql: ${TABLE}.ssc ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: sum_record_count {
    type: number
    sql: ${TABLE}.sum_record_count ;;
  }

  measure: count {
    type: count
    drill_fields: [reporting_name, payor_name]
  }
}
