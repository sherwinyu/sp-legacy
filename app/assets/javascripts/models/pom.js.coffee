Sp.Pom = DS.Model.extend
# description: null
# start_time: null
# duration: 25

  description: DS.attr('string')

  body: DS.attr('string')

  startTime: DS.attr('date')

  duration1: DS.attr('string')

  # // in seconds
  duration2: DS.attr('number')

  reflection: DS.attr('string')

  endTime: (->
    new Date(@get('startTime').getTime() + @get('duration2') * 1000)
  ).property('startTime', 'duration2')
  
  isActive: -> 
    current = new Date
    t1 = @get('startTime').getTime()  
    t2 = @get('endTime').getTime()

    return current < new Date(t2)
    
  timeRemainingMs: ->
    if @isActive()
      @get('endTime').getTime() - new Date().getTime()
    else
      0

  timeRemaining: (->
    d = new Date(@timeRemainingMs())
    "#{d.getUTCHours()}:#{d.getUTCMinutes()}:#{d.getUTCSeconds()}.#{d.getUTCMilliseconds()}"
  )








  









console.log 'Pom loaded', 5/0, null.derp()
