view: ipl {
  sql_table_name: `quantum-386219.dataset1.ipl` ;;

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }
  dimension: full_scorecard {
    type: string
    sql: ${TABLE}.full_scorecard ;;
  }
  dimension: man_of_the_match {
    type: string
    sql: ${TABLE}.man_of_the_match ;;
  }
  dimension: margin {
    type: string
    sql: ${TABLE}.margin ;;
  }
  dimension: place {
    type: string
    sql: ${TABLE}.place ;;
  }
  dimension: stadium {
    type: string
    sql: ${TABLE}.stadium ;;
  }
  dimension: team1 {
    type: string
    sql: ${TABLE}.team1 ;;
  }
  dimension: team1_score {
    type: number
    sql: ${TABLE}.team1_score ;;
  }
  dimension: team2 {
    type: string
    sql: ${TABLE}.team2 ;;
  }
  dimension: team2_score {
    type: number
    sql: ${TABLE}.team2_score ;;
  }
  dimension: toss_choice {
    type: string
    sql: ${TABLE}.toss_choice ;;
  }
  dimension: toss_winner {
    type: string
    sql: ${TABLE}.toss_winner ;;
  }
  dimension: winner {
    type: string
    sql: ${TABLE}.winner ;;
  }
  measure: count {
    type: count
  }
  measure: total_matches_won {
    type: count
    drill_fields: [winner]
  }
}
