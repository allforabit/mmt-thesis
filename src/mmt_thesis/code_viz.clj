(ns mmt-thesis.code-viz)

(require '[com.walmartlabs.datascope :as ds])

(ds/view {:missing nil
          :string "A scalar."
          :n 10
          :enabled? true
          :vector [1 2 3 4]
          :sequence (iterate inc 1)
          :set #{:science-fiction :romance :military}
          :atom (atom {:foo :bar :empty {}})
          :empty {}})

(ds/view
 '[project {:project :settings}
  [master-bus {}
   ;; Master volume is set here
   [volume {:volume :settings}
    ;; Adds a simple reverb effect
    [reverb-effect {}
     [
      ;; First note
      ;; Each note has a vibrato effect
      [vibrato-effect {}
       ;; Envelope to control vibrato depth
       [timeline-evt evt
        [envelope {:param "depth"
                   :env   vib-env}]]
       ;; The fm synth that generates the signal
       [fm-synth (get-in evt [:preset])
        ;; Timeline event that takes care of queuing
        ;; it's child components
        [timeline-evt evt
         ;; In this case a note
         [note {:note :settings}]
         ;; And a frequency envelope
         [envelope {:param "frequency"
                    :state state
                    :env   freq-env}]]]]
      ;; Second note
      [vibrato-effect {}
       ;; ...
       ]
      ;; ...
      ]]]]])
