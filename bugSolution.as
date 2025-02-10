function handleComplete(event:Event):void {
  // Assuming 'event.target' is a Loader object that has loaded a SWF file
  var loadedSWF:MovieClip = event.target.content as MovieClip;

  // Accessing a child MovieClip within the loaded SWF file
  var myChildMC:MovieClip = loadedSWF.myChildMC as MovieClip; 

  // SOLUTION: Check if myChildMC is not null before accessing its properties
  if (myChildMC != null) {
    trace(myChildMC.someProperty); // Accessing a property of the child MovieClip
  } else {
    trace("Child MovieClip 'myChildMC' not found in loaded SWF");
  }
}