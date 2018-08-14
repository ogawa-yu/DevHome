import { Component } from '@angular/core';

@Component({
  selector: 'vending-root',
  template: `
    <h1>{{title}}</h1>
    <div class="header-bar"></div>
    <nav>
      <a routerLink="/vending/drink" routerLinkActive="active">Buy</a>
      <a routerLink="/vending/money" routerLinkActive="active">Refund</a>
    </nav>
    <router-outlet></router-outlet>
  `,
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Vending Machine'
}
