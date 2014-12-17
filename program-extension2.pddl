;; A TSP instance with ten cities.

(define (problem ten-cities)
  (:domain basic-viajes)
  (:objects c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 - ciudad 
            h1_c1 h2_c1 h3_c2 h4_c3 h5_c4 h6_c4 h7_c5 h8_c6 h9_c7 h10_c7 h11_c8 h12_c9 h13_c9 h14_c9 h15_c10 - hotel)
  (:init (transporte c1 c2) (transporte c1 c3) (transporte c2 c4)
         (transporte c2 c5) (transporte c3 c6) (transporte c3 c7)
         (transporte c4 c8) (transporte c4 c9) (transporte c5 c10)
         (transporte c5 c1) (transporte c6 c2) (transporte c6 c3)
         (transporte c7 c4) (transporte c7 c5) (transporte c8 c6)
         (transporte c8 c7) (transporte c9 c8) (transporte c10 c1)
         (visited c1) (not-visited c2) (not-visited c3)
         (not-visited c4) (not-visited c5) (not-visited c6)
         (not-visited c7) (not-visited c8) (not-visited c9)
         (not-visited c10) 
         (= (interes c1) 1) 
         (= (interes c2) 2)
         (= (interes c3) 3)
         (= (interes c4) 2)
         (= (interes c5) 2)
         (= (interes c6) 1)
         (= (interes c7) 2)
         (= (interes c8) 1)
         (= (interes c9) 3)
         (= (interes c10) 1)
         (in c1) (starting c1) (localizado c1 h1_c1) (localizado c1 h2_c1) (localizado c2 h3_c2)
         (localizado c3 h4_c3) (localizado c4 h5_c4) (localizado c4 h6_c4) (localizado c5 h7_c5)
         (localizado c6 h8_c6) (localizado c7 h9_c7) (localizado c7 h10_c7) (localizado c8 h11_c8)
         (localizado c9 h12_c9) (localizado c9 h13_c9) (localizado c9 h14_c9) (localizado c10 h15_c10)
         (= (dias_city) 0)
         (= (min_total_dias_rec) 0)
         (= (max_days_city) 3)
         (= (min_days_city) 2))
  (:goal (and (>= (min_total_dias_rec) 12) (<= (dias_city) (max_days_city)) (>= (dias_city) (min_days_city))))
  (:metric minimize (interes_total))
  )