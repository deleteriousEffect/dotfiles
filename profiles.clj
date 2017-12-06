{:user
 {:plugins [
            [cider/cider-nrepl "0.15.1"]
            [jonase/eastwood "0.2.5"]
            [lein-ancient "0.6.14"]
            [lein-bikeshed "0.5.0"]
            [lein-cljfmt "0.5.7"]
            [lein-cloverage "1.0.9"]
            [lein-kibit "0.1.5"]
            [lein-pprint "1.1.2"]
            [venantius/ultra "0.5.2"]
            ]
  :dependencies [
                 [cljfmt "0.5.7"]
                 [jonase/eastwood "0.2.5" :exclusions [org.clojure/clojure]]
                 [slamhound "1.5.5"]
                 ]
  }
 }

