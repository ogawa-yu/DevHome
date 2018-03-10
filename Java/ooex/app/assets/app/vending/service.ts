import { Injectable } from '@angular/core';
import { Headers, Http, Response } from '@angular/http';
import { Drink } from './drink';
import 'rxjs/add/operator/toPromise';

@Injectable()
export class VendingService {
  private baseUrl = 'vending';
  constructor(private http: Http) {}

  getDrinks(): Promise<Array<Drink>> {
    return this.http
      .get(this.baseUrl)
      .toPromise()
      .then((response) => {
        return response.json().data as Drink[];
      })
      .catch(this.handleError);
  }

  private handleError(error: any): Promise<any> {
    console.error('An error occurred', error);
    return Promise.reject(error.message || error);
  }
}
