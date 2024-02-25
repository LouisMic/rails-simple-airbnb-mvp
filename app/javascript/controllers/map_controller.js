import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl' // Don't forget this!

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Object
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    const long = this.markersValue.long;
    const lat = this.markersValue.lat
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10",
      zoom: 12,
      center: [long, lat]
    })

    this.#addMarkersToMap(long, lat)
    this.#fitMapToMarkers(long, lat)
  }

  #addMarkersToMap(long, lat) {
    new mapboxgl.Marker()
      .setLngLat([ long, lat ])
      .addTo(this.map)
  }

  #fitMapToMarkers(long, lat) {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([ long, lat ])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 13, duration: 0 })
  }
}
