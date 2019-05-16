/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import {Platform, StyleSheet, Text, View,FlatList,Image} from 'react-native';
import { createStackNavigator, createAppContainer } from "react-navigation";

type Props = {};
class App extends Component<Props> {
  static navigationOptions = {
    title: '列表展示-RN',
  };


  _renderCell({item}) {
    let image = null

    switch (parseInt(item.key) % 5) {
      case 0:
        image =  <Image
          source={require('./resource/car-0.png')}
          style={styles.thumbnail}
        />
        break;
      case 1:
        image= <Image
          source={require('./resource/car-1.png')}
          style={styles.thumbnail}
        />
        break;
      case 2:
        image= <Image
          source={require('./resource/car-2.png')}
          style={styles.thumbnail}
        />
        break;
      case 3:
        image= <Image
          source={require('./resource/car-3.png')}
          style={styles.thumbnail}
        />
        break;
      case 4:
        image= <Image
          source={require('./resource/car-4.png')}
          style={styles.thumbnail}
        />
        break;
      default:
        image=  <Image
          source={require('./resource/car-0.png')}
          style={styles.thumbnail}
        />
    }

    return <View style={{flexDirection: 'row',margin:20}}>
      {image}
      <View>
        <Text style={styles.title}>{item.key}行</Text>
        <Text style={styles.content}>第{item.key}行显示效果</Text>
        <Text style={styles.content}>第{item.key}行显示效果</Text>
        <Text style={styles.content}>第{item.key}行显示效果</Text>
      </View>
    </View>
  }

  renderSeparator (){
    return <View style={{height:0.5,backgroundColor:'grey',marginLeft:20}} />
  }

  render() {
    let data = Array.apply(null,{length:1000}).map((v,i)=>{return {key:i+''}})
    return (
      <View style={styles.container}>
        <FlatList
          data={data}
          renderItem={ this._renderCell}
          ItemSeparatorComponent={this.renderSeparator}
        />
      </View>
    );
  }
}

const AppNavigator = createStackNavigator({
  Home: {
    screen: App
  }
});

export default createAppContainer(AppNavigator);

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  title: {
    fontSize: 17,
    fontWeight:'600',
    marginBottom:5
  },
  content: {
    fontSize: 15,
    color:'#434343',
    marginBottom:2
  },
  thumbnail: {
    width: 100,
    height: 100,
    marginRight:10,
    borderRadius:50
  },

});
