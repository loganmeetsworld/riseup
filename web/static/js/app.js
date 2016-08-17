import 'babel-core/polyfill'
import React from 'react'
import { Provider } from 'react-redux'

import configureStore from './store/configureStore'
import App from './containers/App'
import { receivedMessage } from './actions/messages'