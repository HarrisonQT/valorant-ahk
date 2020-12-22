timeInMilli() {
    millis := (A_hour*3600 + A_min*60 + A_sec)*1000 + A_msec
    return millis
}
time() {
    return timeInMilli()
}
timeDiff(time) {
    return time() - time
}