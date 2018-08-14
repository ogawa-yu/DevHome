import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { VendingComponent } from './vending/component';

const routes: Routes = [
  { path: 'vending', component: VendingComponent },
  { path: 'vending/drink/:kind', component: VendingComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})

export class AppRoutingModule {

}
