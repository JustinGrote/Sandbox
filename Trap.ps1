function test {
    trap [Management.Automation.ScriptRequiresException] {
        "Nope!"
        $prereqfound = $true
        continue
    }
    do {
        $Prereqfound = $false
        . ./Test
        "OK!"
    } while ($PreReqFound -eq $true)
}
test
"Done"
