import React, {Component} from "react";
import {StyleSheet, View, Button} from "react-native";

export default class App extends Component{
  render(){
    return (
      <View style={styles.container}>
      <Button title="ON" onPress={()=>{}}></Button>
        <Button title="OFF" onPress={()=>{}}></Button>
      </View>
    )
  }
}

const styles= StyleSheet.create({
  container: {flex:1,justifyContent:"center", alignItems:"center", backgroundColor:"#F9F9F9"}
})