import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { VendingComponent } from './vending/component';

const routes: Routes = [
  { path: '', redirectTo: '/vending', pathMatch: 'full' },
  { path: 'vending', component: VendingComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})

export class AppRoutingModule {

}
