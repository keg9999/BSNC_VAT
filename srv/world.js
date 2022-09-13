  //
  // Action Implementations...
  //

  //this.on ('createTxt', req => UPDATE (req._target) .with ({TravelStatus_code:'A'}))

module.exports = (say) => {
    say.on('hello', req => `Hello ${req.data.to}!`)
}
  
