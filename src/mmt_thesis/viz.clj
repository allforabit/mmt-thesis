(ns mmt-thesis.viz)

(require '[thi.ng.geom.viz.core :as viz] :reload)

(require '[thi.ng.geom.svg.core :as svg])
(require '[thi.ng.geom.vector :as v])
(require '[thi.ng.color.core :as col])
(require '[thi.ng.math.core :as m :refer [PI TWO_PI]])
(require '[thi.ng.color.gradients :as grad])
(require '[thi.ng.geom.core :as g])
(require '[thi.ng.geom.utils :as gu])
(require '[thi.ng.math.noise :as n])

(def test-matrix
  (->> (for [y (range 2) x (range 2)] (n/noise2 (* x 0.1) (* y 0.25)))
       (viz/matrix-2d 2 2)))

(defn freq->euclidian [freq height]
  "Given a height, convert a y position in euclidian space to frequency space."
  (let [lower 20
        upper 100]
    ;; Height and 0 are backwards to make frequency lower at lower part of
    ;; screen
    (m/map-interval freq [lower upper] [height 0])))

(defn euclidian->freq [y-pos height]
  "Given a height, convert a y position in euclidian space to frequency space."
  (let [lower 20
        upper 100]
    ;; Height and 0 are backwards to make frequency lower at lower part of
    ;; screen
    (m/map-interval y-pos [height 0] [lower upper])))

(defn time->euclidian [time width]
  "Given an overall width, convert an x position in euclidian space to time
   space."
  (let [lower 0
        upper 12]
    (m/map-interval time [lower upper] [0 width])))


(defn euclidian->time [x width]
  "Given an overall width, convert an x position in euclidian space to time
   space."
  (let [lower 0
        upper 12]
    (m/map-interval x [0 width] [lower upper])))


(defn time-freq->euclidian [[time freq] [width height]]
  [(time->euclidian time width) (freq->euclidian freq height)])


(defn euclidian->time-freq [[x y] [width height]]
  [(euclidian->time x width) (euclidian->freq y height)])



(defn process-sketch [sketch]
  (->> sketch
       (:notes)
       (vals)
       #_(mapv #(vector (:onset %) (:freq %)))
       (mapv #(-> [(as-> % $ (:onset $) (if $ (-> $ (time->euclidian 23) (double) (Math/round)) nil))
                   (as-> % $ (:freq $) (if $ (-> $ (freq->euclidian 13) (double) (Math/round)) nil))]))
       (mapv #(if (and (first %)
                       (second %))
                (* (first %) (second %))
                nil))
       (remove nil?)))

(defn process-sketches []
  (let [base (into [] (->>
                       (for [x (range 24)
                             y (range 16)]
                         0.0)))
        f (clojure.java.io/file "exhibit")
        fs (file-seq f)
        files (rest fs)]
    (->> files
         ;; A list of multiplied coordinates
         (reduce (fn [acc file]
                   (let [locs (-> file
                                  (slurp)
                                  (read-string)
                                  (process-sketch))]
                     (into acc locs))) [])
         ;; add them up
         (reduce (fn [acc n]
                   (update acc n #(+ 1 %))) base))))


(def data-matrix
  (->> (process-sketches)
       (viz/matrix-2d 24 16)))

(defn heatmap-spec
  [id]
  {:matrix        data-matrix
   :value-domain  (viz/value-domain-bounds data-matrix)
   :palette       (->> id grad/cosine-schemes (grad/cosine-gradient 100))
   :palette-scale viz/linear-scale
   :layout        viz/svg-heatmap})

(defn cartesian-viz
  [prefix id & [opts]]
  (->> {:x-axis (viz/linear-axis
                 {:domain [0 24]
                  :range [50 550]
                  :major 10
                  :minor 5
                  :pos 280})
        :y-axis (viz/linear-axis
                 {:domain      [0 16]
                  :range       [0 280]
                  :major       1
                  :pos         50
                  :label-dist  15
                  :label-style {:text-anchor "end"}})
        :data   [(merge (heatmap-spec id) opts)]}
       (viz/svg-plot2d-cartesian)
       (svg/svg {:width 600 :height 300})
       (svg/serialize)
       (spit (str "manuscript-draft/assets/" prefix "-" (name id) ".svg"))))

(cartesian-viz "hm" :yellow-red)

