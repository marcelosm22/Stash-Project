import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select";

// Connects to data-controller="tom-select"
export default class extends Controller {
  static values = {
    apiKey: String,
    items: Array
  }

  connect() {
    console.log(this.itensValue)
    const settings = {
      options: this.itensValue,
      optgroups: [
        {$order: 3, id: 'music', name: 'Music'},
        {$order: 2, id: 'movies', name: 'Movies'},
        {$order: 1, id: 'tv shows', name: 'TV Shows'},
      ],
      labelField: 'model',
      valueField: 'id',
      optgroupField: 'make',
      optgroupLabelField: 'name',
      optgroupValueField: 'id',
      lockOptgroupOrder: true,
      searchField: ['model'],
      plugins: ['optgroup_columns'],
      openOnFocus: false

    };
    new TomSelect(this.element ,settings);

  }
}
