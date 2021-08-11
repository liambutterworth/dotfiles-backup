local api = vim.api

api.buffer = require('api.buffer')
api.call = require('api.call')
api.exec = require('api.exec')
api.global = require('api.global')
api.option = require('api.option')
api.map = require('api.map')
api.window = require('api.window')

return api
