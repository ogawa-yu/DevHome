import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { VendingService } from './vending/service'
import { AppComponent } from './app.component';
import { VendingComponent } from './vending/component';
import { AppRoutingModule } from './app.routing-module';

@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    AppRoutingModule,
    HttpModule
  ],
  declarations: [
    AppComponent,
    VendingComponent
  ],
  providers: [VendingService],
  bootstrap: [AppComponent]
})

export class AppModule {
}

