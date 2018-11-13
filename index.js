import React from 'react';
import {AppRegistry, StyleSheet, Text, View} from 'react-native';

class ReactNativeComponentExampleView extends React.Component {
  render() {
    var contents = this.props['scores'].map((score) => (
      <Text key={score.name}>
        {score.name}:{score.value}
        {'\n'}
      </Text>
    ));
    return (
      <View style={styles.container}>
        <Text style={styles.highScoresTitle}>This is React native Text tag</Text>
        <Text style={styles.highScoresSubTitle}>and those are data passed as JSON to this React Component</Text>
        <Text style={styles.scores}>{contents}</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF',
  },
  highScoresTitle: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  highScoresSubTitle: {
    fontSize: 10,
    textAlign: 'center',
    margin: 5,
  },
  scores: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

// Module name
AppRegistry.registerComponent('ReactNativeComponentExampleView', () => ReactNativeComponentExampleView);