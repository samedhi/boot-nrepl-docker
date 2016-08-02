(set-env!
 :source-paths #{"src"}
 :dependencies
 '[[org.clojure/clojure                     "1.8.0"]
   [org.clojure/tools.nrepl                 "0.2.12"]])


(task-options!
 pom    {:project 'boot-nrepl-docker
         :version "0.1.0"}
 repl   {:port 6800,
         :bind "0.0.0.0"})

(deftask deps [] (repl :server true))
