; #Include "StatStacking.ah2"
Class Stat {
    value := unset
    min := unset
    max := unset
    __New(_value := unset, _min := unset,_max := unset ,_stackingType := unset) {
        this.value := _value
        this.min := _min
        this.max := _max
        ; this.stackingType := StatStacking.new(stackingType)
    }
    ; add(ByRef stat) {
    ;     this.value := stackingType.add(this.value,stat)
    ; }
}