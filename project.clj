(defproject mmt-thesis "nil"
  :description  "mmt-thesis"
  :url          "https://github.com/thi-ng/geom"
  :license      {:name         "Apache Software License"
                 :url          "http://www.apache.org/licenses/LICENSE-2.0"
                 :distribution :repo}
  :scm          {:name "git"
                 :url  "https://github.com/thi-ng/geom"}

  :min-lein-version "2.4.0"

  :jvm-opts ^:replace ["-Xmx1g" "-server"]

  :dependencies [[org.clojure/clojure "1.8.0"]
                 [org.clojure/clojurescript "1.9.521"]
                 [thi.ng/geom "0.0.1178-SNAPSHOT"]
                 [thi.ng/math "0.2.1"]
                 [thi.ng/color "1.2.0"]
                 [thi.ng/typedarrays "0.1.6"]
                 [walmartlabs/datascope "0.1.1"]]

  :source-paths ["src"]

  :clean-targets ^{:protect false} [:target-path "out"])

