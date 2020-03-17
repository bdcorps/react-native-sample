import React, {Component} from "react";
import {StyleSheet, View, Button, NativeModules, NativeEventEmitter} from "react-native";

const {Torch} = NativeModules;
const TorchEvents = new NativeEventEmitter(Torch);

export default class App extends Component{
  constructor(){
    super();
    TorchEvents.addListener("onChange", result=>{console.log("res", result);})
  }

  render(){
    return (
      <View style={styles.container}>
      <Button title="ON" onPress={()=>Torch.on()}></Button>
        <Button title="OFF" onPress={()=>Torch.off()}></Button>
      </View>
    )
  }
}

const styles= StyleSheet.create({
  container: {flex:1,justifyContent:"center", alignItems:"center", backgroundColor:"#F9F9F9"}
})