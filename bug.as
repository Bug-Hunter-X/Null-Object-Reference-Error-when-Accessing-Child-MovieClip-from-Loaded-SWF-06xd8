function handleComplete(event:Event):void {
  // Assuming 'event.target' is a Loader object that has loaded a SWF file
  var loadedSWF:MovieClip = event.target.content as MovieClip;

  // Accessing a child MovieClip within the loaded SWF file
  var myChildMC:MovieClip = loadedSWF.myChildMC as MovieClip; 

  // POTENTIAL BUG: This line will throw an error if 'myChildMC' is null (the child MC isn't found) 
  trace(myChildMC.someProperty); // Accessing a property of the child MovieClip
}