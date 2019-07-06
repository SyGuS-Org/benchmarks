
(set-logic  LIA)
(
synth-fun f_119-13-119-51 ( (stopTime Int) (this.stopTime Int) (org.apache.commons.lang.time.StopWatch.STATE_RUNNING Int) (this.splitState Int) (org.apache.commons.lang.time.StopWatch.STATE_SUSPENDED Int) (org.apache.commons.lang.time.StopWatch.STATE_UNSTARTED Int) (this.startTime Int) (org.apache.commons.lang.time.StopWatch.STATE_SPLIT Int) (org.apache.commons.lang.time.StopWatch.STATE_UNSPLIT Int) (org.apache.commons.lang.time.StopWatch.STATE_STOPPED Int) (MC_741360 Int) (this.runningState Int)) Bool
	((Start Bool (
(= IntExpr IntExpr)
(not Start )



))
(IntExpr Int (
stopTime this.stopTime org.apache.commons.lang.time.StopWatch.STATE_RUNNING this.splitState org.apache.commons.lang.time.StopWatch.STATE_SUSPENDED org.apache.commons.lang.time.StopWatch.STATE_UNSTARTED this.startTime org.apache.commons.lang.time.StopWatch.STATE_SPLIT org.apache.commons.lang.time.StopWatch.STATE_UNSPLIT org.apache.commons.lang.time.StopWatch.STATE_STOPPED MC_741360 this.runningState 
0 1
))

	)
)
(declare-var stopTime_119-13-119-51 Int)
(declare-var this.stopTime_119-13-119-51 Int)
(declare-var org.apache.commons.lang.time.StopWatch.STATE_RUNNING_119-13-119-51 Int)
(declare-var this.splitState_119-13-119-51 Int)
(declare-var org.apache.commons.lang.time.StopWatch.STATE_SUSPENDED_119-13-119-51 Int)
(declare-var org.apache.commons.lang.time.StopWatch.STATE_UNSTARTED_119-13-119-51 Int)
(declare-var this.startTime_119-13-119-51 Int)
(declare-var org.apache.commons.lang.time.StopWatch.STATE_SPLIT_119-13-119-51 Int)
(declare-var org.apache.commons.lang.time.StopWatch.STATE_UNSPLIT_119-13-119-51 Int)
(declare-var org.apache.commons.lang.time.StopWatch.STATE_STOPPED_119-13-119-51 Int)
(declare-var MC_741360_119-13-119-51 Int)
(declare-var this.runningState_119-13-119-51 Int)

(constraint  (=>  (and (= org.apache.commons.lang.time.StopWatch.STATE_RUNNING_119-13-119-51 1)  (and (= org.apache.commons.lang.time.StopWatch.STATE_SPLIT_119-13-119-51 11)  (and (= this.startTime_119-13-119-51 0)  (and (= org.apache.commons.lang.time.StopWatch.STATE_SUSPENDED_119-13-119-51 3)  (and (= this.runningState_119-13-119-51 3)  (and (= MC_741360_119-13-119-51 0)  (and (= stopTime_119-13-119-51 0)  (and (= this.stopTime_119-13-119-51 0)  (and (= org.apache.commons.lang.time.StopWatch.STATE_UNSTARTED_119-13-119-51 0)  (and (= this.splitState_119-13-119-51 10)  (and (= org.apache.commons.lang.time.StopWatch.STATE_STOPPED_119-13-119-51 2) (= org.apache.commons.lang.time.StopWatch.STATE_UNSPLIT_119-13-119-51 10)) ) ) ) ) ) ) ) ) ) )  (= (f_119-13-119-51 stopTime_119-13-119-51 this.stopTime_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_RUNNING_119-13-119-51 this.splitState_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_SUSPENDED_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_UNSTARTED_119-13-119-51 this.startTime_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_SPLIT_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_UNSPLIT_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_STOPPED_119-13-119-51 MC_741360_119-13-119-51 this.runningState_119-13-119-51 ) false)))
(constraint  (or  (=>  (and (= org.apache.commons.lang.time.StopWatch.STATE_RUNNING_119-13-119-51 1)  (and (= org.apache.commons.lang.time.StopWatch.STATE_SPLIT_119-13-119-51 11)  (and (= this.startTime_119-13-119-51 0)  (and (= org.apache.commons.lang.time.StopWatch.STATE_SUSPENDED_119-13-119-51 3)  (and (= this.runningState_119-13-119-51 1)  (and (= MC_741360_119-13-119-51 0)  (and (= stopTime_119-13-119-51 0)  (and (= this.stopTime_119-13-119-51 0)  (and (= org.apache.commons.lang.time.StopWatch.STATE_UNSTARTED_119-13-119-51 0)  (and (= this.splitState_119-13-119-51 10)  (and (= org.apache.commons.lang.time.StopWatch.STATE_STOPPED_119-13-119-51 2) (= org.apache.commons.lang.time.StopWatch.STATE_UNSPLIT_119-13-119-51 10)) ) ) ) ) ) ) ) ) ) )  (= (f_119-13-119-51 stopTime_119-13-119-51 this.stopTime_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_RUNNING_119-13-119-51 this.splitState_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_SUSPENDED_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_UNSTARTED_119-13-119-51 this.startTime_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_SPLIT_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_UNSPLIT_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_STOPPED_119-13-119-51 MC_741360_119-13-119-51 this.runningState_119-13-119-51 ) false))  (=>  (and (= org.apache.commons.lang.time.StopWatch.STATE_RUNNING_119-13-119-51 1)  (and (= org.apache.commons.lang.time.StopWatch.STATE_SPLIT_119-13-119-51 11)  (and (= this.startTime_119-13-119-51 0)  (and (= org.apache.commons.lang.time.StopWatch.STATE_SUSPENDED_119-13-119-51 3)  (and (= this.runningState_119-13-119-51 1)  (and (= MC_741360_119-13-119-51 0)  (and (= stopTime_119-13-119-51 0)  (and (= this.stopTime_119-13-119-51 0)  (and (= org.apache.commons.lang.time.StopWatch.STATE_UNSTARTED_119-13-119-51 0)  (and (= this.splitState_119-13-119-51 10)  (and (= org.apache.commons.lang.time.StopWatch.STATE_STOPPED_119-13-119-51 2) (= org.apache.commons.lang.time.StopWatch.STATE_UNSPLIT_119-13-119-51 10)) ) ) ) ) ) ) ) ) ) )  (= (f_119-13-119-51 stopTime_119-13-119-51 this.stopTime_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_RUNNING_119-13-119-51 this.splitState_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_SUSPENDED_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_UNSTARTED_119-13-119-51 this.startTime_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_SPLIT_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_UNSPLIT_119-13-119-51 org.apache.commons.lang.time.StopWatch.STATE_STOPPED_119-13-119-51 MC_741360_119-13-119-51 this.runningState_119-13-119-51 ) true))) )


(check-synth)