{:user
 {:plugins [
            [cider/cider-nrepl "0.12.0"]
            [jonase/eastwood "0.2.3"]
            [lein-bikeshed "0.3.0"]
            [lein-cljfmt "0.5.1"]
            [lein-cloverage "1.0.6"]
            [lein-kibit "0.1.2"]
            [lein-pprint "1.1.1"]
            ]
  :dependencies [
                 [cljfmt "0.3.0"]
                 [jonase/eastwood "0.2.1" :exclusions [org.clojure/clojure]]
                 [slamhound "1.3.1"]
                 ]
  }
 }

