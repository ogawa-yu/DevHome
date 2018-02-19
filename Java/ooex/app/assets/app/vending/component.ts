import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

import { VendingService } from './service';
import { Drink } from './drink';

@Component({
  selector: 'vending',
  templateUrl: './component.html',
  styleUrls: ['./component.css']
})
export class VendingComponent implements OnInit {
  drinks: Drink[];

  constructor(
    private router: Router,
    private service: VendingService) {
  }

  ngOnInit(): void {
    /*
    this.service.getDrinks()
      .then(drinks => this.drinks = heroes.slice(1, 5));
      */
  }
}
